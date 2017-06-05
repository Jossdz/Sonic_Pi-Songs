use_bpm 157

define :batery do
  loop do
    3.times do
      sample :drum_heavy_kick
      sleep 0.5
    end
    sample :drum_snare_hard
    sleep 0.5
  end
end
define :first_guitar do
  8.times do
    play :B3
    sleep 0.5
    play :Eb
    sleep 0.5
    play :Gb
    sleep 0.5
    play :Eb
    sleep 0.5
  end
  8.times do
    play :B3
    sleep 0.5
    play :Eb
    sleep 0.5
    play :Ab
    sleep 0.5
    play :Eb
    sleep 0.5
  end
end

define :bass do
  3.times do
    play :A1
    sleep 0.60
  end
end

define :solo do
  play :A , sustain: 0.6, amp: 1.5
  sleep 1.5
  play :G,  sustain: 0.4, amp: 1.5
  sleep 0.6
  play :A, sustain: 0.3, amp: 1.5
  sleep 1.5
  play :F, sustain: 0.3, amp: 1.5
  sleep 0.8
  play :G, sustain: 1, amp: 1.5
  sleep 2
  
  play :D, sustain: 0.3
  sleep 0.6
  play :Ds, sustain: 0.3
  sleep 0.6
  play :F, sustain: 3, decay: 1
  sleep 6.5
  
  play :F, sustain: 0.3
  sleep 0.8
  play :G, sustain: 0.3
  sleep 0.6
  play :D, sustain: 1.5,  decay: 0.6
  sleep 4
  
  play :C, sustain: 0.3, amp: 1.2
  sleep 0.6
  play :D, sustain: 0.3, amp: 1.2
  sleep 1.6
  play :C, sustain: 0.3, amp: 1.2
  sleep 0.6
  play :D, sustain: 0.3, amp: 1.2
  sleep 0.6
  play :C, sustain: 0.3, amp: 1.2
  sleep 0.6
  play :A3, sustain:3, amp: 1.5, decay: 1
  
  
end
# EJECUCIÓN

in_thread do
  batery
end
in_thread do
  sleep 0.5
  2.times do
    play :A1
    sleep 0.60
  end
  sleep 0.3
  loop do
    bass
    sleep 0.2
  end
end

in_thread do
  sleep 0.5
  first_guitar
  first_guitar
  first_guitar
  first_guitar
end
in_thread do
  sleep 32.5
  solo
end


