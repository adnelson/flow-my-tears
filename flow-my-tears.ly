\version "2.20.0"

# #(set-global-staff-size 28)

#(define RH rightHandFinger)

\paper {
  system-system-spacing.padding = #4
  top-system-spacing = #20
}

\header {
  title = "Flow, My Tears"
  composer = "John Dowland"
  arranger = "arr. Allen Nelson, 2020"
  copyright = "©2020 Allen Nelson. Free use with attribution."
}

songlyrics = \lyricmode {
}

<<

\new Staff \with {
  instrumentName = "Voice."
}
\new Voice = "melody"
\relative {
  \key a \minor
  \accidentalStyle modern
  \autoBeamOff
  a'4. g16 f e4 c'~ 
  | 
  4 b8 a gis2
  |
  a4 e4. e8 g g 
  |
  f4 d e4. b'8 
  |
  c4 a b gis
  |
  a8 c~ 16 b a8 gis4 c
  |
  b8 a a4. gis16 fis gis4
  |
  a1
}

\new Lyrics {
  \lyricsto "melody" \songlyrics
}

\new Staff \with {
  instrumentName = "Guitar."
  \override StaffSymbol.staff-space = #(magstep +1)
  % \omit Fingering
} <<
  \tempo "Andante mosso assai"
  \key a \minor
  \time 4/4
  \clef "treble_8"
  \accidentalStyle modern
  \override Score.SpacingSpanner.spacing-increment = #1.5
  \new Voice = "upper"
    \relative a {
      \voiceOne
      \set fingeringOrientations = #'(left)
      \set stringNumberOrientations = #'(up)
      \autoBeamOn
      \repeat volta 2 {
      c4. b8 c d e4~
      |
      8 d16 c d4 e e~
      |
      8 e a4 g16 f e d c8 b~
      |
      8 a a4  gis e'16 d c b 
      |
      a8 e'~ 16 d c8 d4 e8 e~
      |
      4 d e g
      |
      f d e4. d8
      |
      cis8. f16 e d cis b cis2
      |
    }}
   \new Voice = "lower"
    \relative a, {
      \voiceThree
      \set fingeringOrientations = #'(left)
      \set stringNumberOrientations = #'(down)
      c4 c c c
    }
  \new Voice = "lower"
    \relative a, {
      \voiceFour
      \set fingeringOrientations = #'(left)
      \set stringNumberOrientations = #'(down)
      a4 a a a
    }

>>

>>