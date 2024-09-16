%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . -6.5) (0 . -4.5) (0 . 2)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 3/4
  \key f \minor
}

rightHand = \relative {
  \global
  \partial 4 c''4->~( |
  c4 df8 c bf af |
  g4. f8 f4->) |
  f'4( bf,8 c ef df |
  \appoggiatura { c16 df ef } df4.-> c8 c4->) |
  b8( c \acciaccatura { ef } df c f g |
  af8 af, e' g f f, |
  c'8 ef! df df, c' bf |
  g8) c( b c df d |
  
  \barNumberCheck 9
  ef4 f8 ef df! c |
  bf4. af8 af4->) |
  af'4( c,8 ef g f |
  ef4. d!8 d4->) |
  c'4.( bf8 a af |
  af8 g f ef d c |
  c8 bf a bf \acciaccatura { d } c bf |
  c8 bf a bf \acciaccatura { d } c bf |
  
  \barNumberCheck 17
  bf4) c'8( bf a af |
  fs8 g d ef ef, c' |
  bf8 bf, g' bf f bf |
  << { \voiceOne ef,4.) df'!8( } \new Voice { \voiceFour ef,2 } >> 
    \oneVoice \appoggiatura { c'16 df ef } df8 c |
  c4-\underSlur ^\aTempo df8 c bf af |
  g4. f8 f4->) |
  f'4( bf,8 c ef df |
  \appoggiatura { c16 df ef } df4.-> c8 c4->) |
  
  \barNumberCheck 25
  b8-\slurShapeA ( c \acciaccatura { ef } df c f g |
  af8 af, e' g f f, |
  c'8 ef! df df, c' bf |
  g8) c-\slurShapeB ( b c df d |
  ef4 f8 ef df! c |
  bf4. af8 af4->) |
  af'4( c,8 ef g f |
  ef4. d!8 d4->) |
  
  \barNumberCheck 33
  c'4.( bf8 a af |
  af8 g f ef d c |
  c8 bf a bf \acciaccatura { d } c bf |
  c8 bf a bf \acciaccatura { d } c bf |
  bf4) c'8( bf a af |
  fs8 g d ef ef, c' |
  bf8 bf, g' bf f bf |
  ef,2) e4( |
  
  \barNumberCheck 41
  f2-> g4 |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  g8( df' ef g df' f |
  \acciaccatura { df8 } <df f>2 <df ef>4) |
  \appoggiatura { ef16 f } <c ef>4( <b d>8 <c ef> <df f> <c ef> |
  <c af'>2) g4( |
  
  \barNumberCheck 49
  f2-> g4 |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  g8[( c ef g c8. ef16] |
  \acciaccatura { g,8 } <g ef'>2 <f d'>4~ |
  q4.. <ef c'>16 q4->~ |
  q4.. q16 q4->~ |
  
  \barNumberCheck 57
  c'4) f,->( g-> |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  g8( df' ef g df' f |
  \acciaccatura { df8 } <df f>2 <df ef>4) |
  \appoggiatura { ef16 f } <c ef>4( <b d>8 <c ef> <df f> <c ef> |
  <c af'>2) g4( |
  
  \barNumberCheck 65
  f2-> g4 |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  r4 d8( ef f g |
  f4\trill e8 f g af |
  af4\trill g8 af bf c |
  af2) c4~( |
  
  \barNumberCheck 73
  c4 df8 c bf af |
  g4. f8 f4->) |
  f'4( bf,8 c ef df |
  \appoggiatura { c16 df ef } df4.-> c8 c4->) |
  b8-\slurShapeA ( c \acciaccatura { ef } df c f g |
  af8 af, e' g f f, |
  c'8 ef! df df, c' bf |
  g8) c-\slurShapeB ( b c df d |
  
  \barNumberCheck 81
  ef4 f8 ef df! c |
  bf4. af8 af4->) |
  af'4( c,8 ef g f |
  ef4. d!8 d4->) |
  c'4.( bf8 a af |
  af8 g f ef d c |
  c8 bf a bf \acciaccatura { d } c bf |
  c8 bf a bf \acciaccatura { d } c bf |
  
  \barNumberCheck 89
  bf4) c'8( bf a af |
  fs8 g d ef ef, c' |
  bf8 bf, g' bf f bf |
  ef,2) e4( |
  f2-> g4 |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  
  \barNumberCheck 97
  g8( df' ef g df' f |
  \acciaccatura { df8 } <df f>2 <df ef>4) |
  \appoggiatura { ef16 f } <c ef>4( <b d>8 <c ef> <df f> <c ef> |
  <c af'>2) g4( |
  f2-> g4 |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  
  \barNumberCheck 105
  g8[( c ef g c8. ef16] |
  \acciaccatura { g,8 } <g ef'>2 <f d'>4~ |
  q4.. <ef c'>16 q4->~ |
  q4.. q16 q4->~ |
  c'4) f,->( g-> |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  
  \barNumberCheck 113
  g8( df' ef g df' f |
  \acciaccatura { df8 } <df f>2 <df ef>4) |
  \appoggiatura { ef16 f } <c ef>4( <b d>8 <c ef> <df f> <c ef> |
  <c af'>2) g4( |
  f2-> g4 |
  \appoggiatura { af16 bf } af4 g8 af c bf) |
  r4 d,8( f ef af |
  c,2.->) |
  
  \barNumberCheck 121
  r4 d8( ef f g |
  f4\trill e8 f g af |
  af4\trill g8 af bf c |
  af2) r4 |
  \bar "|."
}

leftHandUpper = \relative {
  \partial 4 s4 |
  \voiceThree r4 <af c> q |
  r4 <f af c> q |
  r4 <f bf>2 |
  s2. |
  r4 <bf c g'> q |
  r4 <af c f> s |
  r4 <f g df'> s |
  s2. |
  
  \barNumberCheck 9
  r4 <c' ef!> q |
  r4 <af c ef> q |
  r4 <af c ef> q |
  r4 <af bf f'> q |
  r4 <af bf d> q |
  r4 <g bf ef> q |
  r4 <af! bf f'> q |
  r4 <g bf ef> q |
  
  \barNumberCheck 17
  r4 <af bf d> q |
  s2. * 2 |
  r4 <g bf> s4 |
  r4 <af c> q |
  r4 <f af c> q |
  r4 <f bf>2 |
  s2. |
  
  \barNumberCheck 25
  r4 <bf c g'> q |
  r4 <af c f> r |
  r4 <f g df'> s |
  s2. |
  r4 <c' ef!> q |
  r4 <af c ef> q |
  r4 <af c ef> q |
  r4 <af bf f'> q |
  
  \barNumberCheck 33
  r4 <af bf d> q |
  r4 <g bf ef> q |
  r4 <af! bf f'> q |
  r4 <g bf ef> q |
  r4 <af bf d> q |
  s2. * 2 |
  r4 <g bf> s4 |
  
  \barNumberCheck 41
  r4 <af bf> q |
  r4 <f df'> <g df'> |
  r4 <af c> q |
  r4 <ef af> q |
  s2. * 4 |
  
  \barNumberCheck 49
  r4 <f bf df> q |
  r4 <f df'> <g df'> |
  r4 <ef af c> q |
  r4 <d f> q |
  s2. * 4 |
  
  \barNumberCheck 57
  r4 <af' bf> q |
  r4 <f df'> <g df'> |
  r4 <af c> q |
  r4 <ef af> q |
  s2. * 4 |
  
  \barNumberCheck 65
  r4 <f bf df> q |
  r4 <f df'> <g df'> |
  r4 <af c> q |
  r4 <ef af> q |
  r4 <af bf> q |
  r4 <af bf d> q |
  r4 <bf df! ef> <g df' ef> |
  r4 <ef af c> <e af c>~ |
  
  \barNumberCheck 73
  <af c>4 q q |
  r4 <f af c> q |
  r4 <f bf>2 |
  s2. |
  r4 <bf c g'> q |
  r4 <af c f> s |
  r4 <f g df'> s |
  s2. |
  
  \barNumberCheck 81
  r4 <c' ef!> q |
  r4 <af c ef> q |
  r4 <af c ef> q |
  r4 <af bf f'> q |
  r4 <af bf d> q |
  r4 <g bf ef> q |
  r4 <af! bf f'> q |
  r4 <g bf ef> q |
  
  \barNumberCheck 89
  r4 <af bf d> q |
  s2. * 2 |
  r4 <g bf> s4 |
  r4 <af bf> q |
  r4 <f df'> <g df'> |
  r4 <af c> q |
  r4 <ef af> q |
  
  \barNumberCheck 97
  s2. * 4 |
  r4 <f bf df> q |
  r4 <f df'> <g df'> |
  r4 <ef af c> q |
  r4 <d f> q |
  
  \barNumberCheck 105
  s2. * 4 |
  r4 <af' bf> q |
  r4 <f df'> <g df'> |
  r4 <af c> q |
  r4 <ef af> q |
  
  \barNumberCheck 113
  s2. * 4 |
  r4 <f bf df> q |
  r4 <f df'> <g df'> |
  r4 <af c> q |
  r4 <ef af> q |
  
  \barNumberCheck 121
  r4 <af bf> q |
  r4 <af bf d> q |
  r4 <bf df! ef> <g df' ef> |
  r4 <ef af c> s4 |
}

leftHandLower = \relative {
  \partial 4 r4 |
  \voiceTwo f2. |
  ef2. |
  df2 bf4 |
  \oneVoice f4-. <c'' af'> q |
  \voiceTwo e,2. |
  f2 \oneVoice af,4 |
  \voiceTwo bf2*1/2^( \hideNoteHead df'4) \oneVoice bf,,4-. |
  c4-. <c' g' e'>4\arpeggio r |
  
  \barNumberCheck 9
  \voiceTwo af'2. |
  g2. |
  f2. |
  bf,2. |
  bf2. |
  bf2. |
  bf2. |
  bf2. |
  
  \barNumberCheck 17
  bf2. |
  \oneVoice ef4-. <bf' ef g>( <a c gf'>) |
  bf,4-. <bf' ef>( <af d>) |
  ef2 \oneVoice <c g' bf e>4\arpeggio |
  \voiceTwo f2. |
  ef2. |
  df2 bf4 |
  \oneVoice f4-. <c'' af'> q |
  
  \barNumberCheck 25
  \voiceTwo e,2. |
  f2 \oneVoice af,4 |
  \voiceTwo bf2*1/2^( \hideNoteHead df'4) \oneVoice bf,,4-. |
  c4-. <c' g' e'>4\arpeggio r |
  \voiceTwo af'2. |
  g2. |
  f2. |
  bf,2. |
  
  \barNumberCheck 33
  bf2. |
  bf2. |
  bf2. |
  bf2. |
  bf2. |
  \oneVoice ef4-. <bf' ef g>( <a c gf'>) |
  bf,4-. <bf' ef>( <af! d>) |
  \voiceTwo ef2 \oneVoice r4 |
  
  \barNumberCheck 41
  \voiceTwo df2. |
  bf2( ef4) |
  ef2. |
  ef,2. |
  \oneVoice ef4-. <ef' g df'>( <g bf ef>) |
  ef4-. <bf' ef g> q |
  af,4-. <af' ef' af> q |
  af,4-. <ef' af c> q |
  
  \barNumberCheck 49
  \voiceTwo df2. |
  bf2( ef4) |
  af,2. |
  af2. |
  \oneVoice g4 <ef' g c> q |
  g,4 <g' b g'> q |
  c,4-. <g' c g'> q |
  c,4-. <g' c g'> q |
  
  \barNumberCheck 57
  \voiceTwo df2. |
  bf2( ef4) |
  ef2. |
  ef,2. |
  \oneVoice ef4-. <ef' g df'>( <g bf ef>) |
  ef4-. <bf' ef g> q |
  af,4-. <af' ef' af> q |
  af,4-. <ef' af c> q |
  
  \barNumberCheck 65
  \voiceTwo df2. |
  bf2( ef4) |
  ef2. |
  ef,2. |
  ef'2. |
  ef2. |
  ef2. |
  af,2 r4 |
  
  \barNumberCheck 73
  f'2. |
  ef!2. |
  df2 bf4 |
  \oneVoice f4-. <c'' af'> q |
  \voiceTwo e,2. |
  f2 \oneVoice af,4 |
  \voiceTwo bf2*1/2^( \hideNoteHead df'4) \oneVoice bf,,4-. |
  c4-. <c' g' e'>4\arpeggio r |
  
  \barNumberCheck 81
  \voiceTwo af'2. |
  g2. |
  f2. |
  bf,2. |
  bf2. |
  bf2. |
  bf2. |
  bf2. |
  
  \barNumberCheck 89
  bf2. |
  \oneVoice ef4-. <bf' ef g>( <a c gf'>) |
  bf,4-. <bf' ef>( <af! d>) |
  \voiceTwo ef2 \oneVoice r4 |
  \voiceTwo df2. |
  bf2( ef4) |
  ef2. |
  ef,2. |
  
  \barNumberCheck 97
  \oneVoice ef4-. <ef' g df'>( <g bf ef>) |
  ef4-. <bf' ef g> q |
  af,4-. <af' ef' af> q |
  af,4-. <ef' af c> q |
  \voiceTwo df2. |
  bf2( ef4) |
  af,2. |
  af2. |
  
  \barNumberCheck 105
  \oneVoice g4 <ef' g c> q |
  g,4 <g' b g'> q |
  c,4-. <g' c g'> q |
  c,4-. <g' c g'> q |
  \voiceTwo df2. |
  bf2( ef4) |
  ef2. |
  ef,2. |
  
  \barNumberCheck 113
  \oneVoice ef4-. <ef' g df'>( <g bf ef>) |
  ef4-. <bf' ef g> q |
  af,4-. <af' ef' af> q |
  af,4-. <ef' af c> q |
  \voiceTwo df2. |
  bf2( ef4) |
  ef2. |
  ef,2. |
  
  \barNumberCheck 121
  ef'2. |
  ef2. |
  ef2. |
  af,2 \oneVoice r4 |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4\mf |
  s4 s4.\> s8\! |
  s2. |
  s4 s4.\< s8\! |
  s4.\> s8\! s4 |
  s4 s2-\tweak Y-offset 1 \cresc |
  s2 s8. s16\! |
  s2\> s8 s\! |
  s8 s\< s4. s8\! |
  
  \barNumberCheck 9
  s2.^\dolce |
  s2. * 2 |
  \override DynamicTextSpanner.style = #'none
  s2.\cresc |
  s2.\f |
  s2\> s8 s\! |
  s2. * 2 |
  
  \barNumberCheck 17
  s4\p s2\< |
  s8 s\! s2 |
  s4 s4.\> s8\! |
  s4.^\rit s4\< s8\! |
  s4\mf s4.\> s8\! |
  s2. |
  s4 s4.\< s8\! |
  s4.\> s8\! s4 |
  
  \barNumberCheck 25
  s4 s2\cresc |
  s2 s8. s16\! |
  s2\> s8 s\! |
  s8 s\< s4. s8\! |
  s2.^\dolce |
  s2. * 2 |
  s2.\cresc |
  
  \barNumberCheck 33
  s2.\f |
  s2\> s8 s\! |
  s2. * 2 |
  s4\p s2\< |
  s8 s\! s2 |
  s4 s4.\> s8\! |
  s2. |
  
  \barNumberCheck 41
  s2. |
  s4 s4.\< s8\! |
  s2. * 2 |
  s2\< s8 s\! |
  s4\sf \tag layout { s2 } \tag midi { s2\f } |
  s2. |
  s2\> s4\! |
  
  \barNumberCheck 49
  s2. |
  s4 s4.\< s8\! |
  s2. * 2 |
  s2-\tweak Y-offset -1 \f -\tweak Y-offset -1 \< s8. s16\! |
  s2\> s4\! |
  s2.\dim |
  s2.\pp |
  
  \barNumberCheck 57
  s2.\p |
  s4 s4.\< s8\! |
  s2.\p |
  s2. |
  s2\< s8 s\! |
  s2.\f |
  s2. |
  s2\> s4\! |
  
  \barNumberCheck 65
  s2. |
  s4 s4.\< s8\! |
  s2. * 2 |
  \revert DynamicTextSpanner.style
  s4\p s2\cresc |
  s2. * 2 |
  s2 s4\sf |
  
  \barNumberCheck 73
  s4\mf s4.\> s8\! |
  s2. |
  s4 s4.\< s8\! |
  s4.\> s8\! s4 |
  s4 s2\cresc |
  s2 s8. s16\! |
  s2\> s8 s\! |
  s8 s\< s4. s8\! |
  
  \barNumberCheck 81
  s2.^\dolce |
  s2. * 2 |
  \override DynamicTextSpanner.style = #'none
  s2.\cresc |
  s2.\f |
  s2\> s8 s\! |
  s2. * 2 |
  
  \barNumberCheck 89
  s4\p s2\< |
  s8 s\! s2 |
  s4 s4.\> s8\! |
  s2. |
  s2. |
  s4 s4.\< s8\! |
  s2. * 2 |
  
  \barNumberCheck 97
  s2\< s8 s\! |
  s4\sf \tag layout { s2 } \tag midi { s2\f } |
  s2. |
  s2\> s4\! |
  s2. |
  s4 s4.\< s8\! |
  s2. * 2 |
  
  \barNumberCheck 105
  s2\f\< s8. s16\! |
  s2\> s4\! |
  s2.\dim |
  s2.\pp |
  s2.\p |
  s4 s4.\< s8\! |
  s2.\p |
  s2. |
  
  \barNumberCheck 113
  s2\< s8 s\! |
  s2.\f |
  s2. |
  s2\> s4\! |
  s2. |
  s4 s4.\< s8\! |
  s2. * 2 |
  
  \barNumberCheck 121
  \revert DynamicTextSpanner.style
  s4\p s2\cresc |
  s2. * 2 |
  s4 s\! s |
}

tempi = {
  \tempo "Tempo giusto" 4 = 144
  \partial 4 s4
  \set Score.tempoHideNote = ##t
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 3 |
  \tempo 4 = 120
  s2.
  \tempo 4 = 144
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 7 |
  \tempo 4 = 120
  s2.
  
  \barNumberCheck 73
  \tempo 4 = 144
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 2 |
  \tempo 4 = 120
  s2. |
  \tempo 4 = 100
  s2. |
}

pedal = {
  \partial 4 s4
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4-\tweak Y-offset -1 \su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s4.\sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 9
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  
  \barNumberCheck 17
  s2-\tweak Y-offset -1 \sd s4\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2 s8-\tweak Y-offset -1 \sd s\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 25
  s2\sd s4\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  
  \barNumberCheck 33
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4\sd s2\su |
  
  \barNumberCheck 41
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1.5 \sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 49
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 57
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1.5 \sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 65
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1.5 \sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  
  \barNumberCheck 73
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s4.\sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s2-\tweak Y-offset -1.5 \sd s4\su |
  
  \barNumberCheck 81
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  
  \barNumberCheck 89
  s2-\tweak Y-offset -1 \sd s4\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4\sd s2\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 97
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  
  \barNumberCheck 105
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 113
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -2 \sd s4\su |
  
  \barNumberCheck 121
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su | 
}

forceBreaks = {
  % page 1
  \partial 4 s4
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\pageBreak

  % page 2
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
}

waltzTwoNotes =
\score {
  \header {
    title = "Waltz Two"
    composer = "Frédéric Chopin"
    opus = "Opus 70, No. 2"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

waltzTwoMidi =
\book {
  \bookOutputName "waltz-op70-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
