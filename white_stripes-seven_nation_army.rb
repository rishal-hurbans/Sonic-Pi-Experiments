define :iconic_bass_guitar do

  play :e3
  sleep 0.75

  play :e3
  sleep 0.25

  play :g3, release: 0.4
  sleep 0.38

  play :e3, release: 0.4
  sleep 0.38

  play :d3, release: 0.4
  sleep 0.25

  play :c3, release: 0.8
  sleep 1

  play :b2
  sleep 1
end

with_fx :compressor, amp: 2 do
  loop do
    with_synth :fm do
      iconic_bass_guitar
    end
  end
end