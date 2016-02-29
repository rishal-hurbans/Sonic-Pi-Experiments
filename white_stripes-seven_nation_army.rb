full = 1.0
half = full / 2
quarter = full / 4
eigth = full / 8

define :iconic_bass_guitar do
  in_thread do
    with_fx :compressor, amp: 2 do
      loop do
        use_synth :fm
        play :e3
        sleep 3*quarter

        play :e3
        sleep quarter

        play :g3, release: 0.4
        sleep 3*eigth

        play :e3, release: 0.4
        sleep 3*eigth

        play :d3, release: 0.4
        sleep quarter

        play :c3, release: 0.8
        sleep full

        play :b2
        sleep full
      end
    end
  end
end

define :cymbal do
  in_thread do
    loop do
      sample :drum_cymbal_closed
      sleep 1
    end
  end
end

define :drum do
  in_thread do
    loop do
      sample :drum_heavy_kick
      sleep 0.5
    end
  end
end

define :snare do
  in_thread do
    loop do
      sample :drum_snare_soft
      sleep 1
    end
  end
end

iconic_bass_guitar
sleep 8
drum
sleep 8.5
snare