s.boot
(
a.source = {
	var pitch, mod, tempo, intensity;
	tempo = MouseX.kr(0, 300);
	intensity = MouseY.kr(0, 1000);
	mod = SinOsc.ar(tempo, 0, intensity);
	pitch = SinOsc.ar(440+mod, 0 , 0.6);
	pitch
};
)
a.play

(~am = NodeProxy.new.play;
~am.source = {|tempo=300|, }
~am.gui
)

~am.play