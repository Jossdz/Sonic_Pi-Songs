in_thread do
  64.times do
    sample :drum_cymbal_closed
    sleep 0.24
  end
end
define :intro do
  
  4.times do
    play :E
    play :Ab
    play :B
    sleep 0.24
  end
  sleep 0.46
  2.times do
    play :E
    play :Ab
    play :Db5
    sleep 0.70
  end
  sleep 0.03
  2.times do
    play :E
    play :Ab
    play :Db5
    sleep 0.3
  end
end
define :vers do
  with_fx :rlpf do
    play :E, sustain:3.5
    play :g, sustain:3.5
    play :b, sustain:3.5
    sleep 3.5
    play :a, sustain:3.5
    play :e, sustain:3.5
    play :g, sustain:3.5
  end
end

3.times do
  intro
  sleep 0.38
end
intro
vers
sleep 4
vers



