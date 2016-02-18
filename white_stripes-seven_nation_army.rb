define :iconic_bass_guitar do
  in_thread do
    with_fx :compressor, amp: 1 do
      loop do
        use_synth :fm
        play :e3
        sleep 0.75

        play :e3
        sleep 0.25

        play :g3, release: 0.4
        sleep 0.375

        play :e3, release: 0.4
        sleep 0.375

        play :d3, release: 0.4
        sleep 0.25

        play :c3, release: 0.8
        sleep 1

        play :b2
        sleep 1
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
sleep 7.5