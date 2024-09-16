%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 4) (0 . 0) (0 . -2))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (-4 . 2) (0 . 1.5))
                        ((-1 . 1) (0 . 2) (0 . 1) (0 . -2))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 0.25) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 3/4
  \key gf \major
}

rightHand = \relative {
  \global
  \tag layout { 
    \partial 4. \appoggiatura { gf''16 af } gf8-\slurShapeA ( f ef 
  }
  \tag midi { \partial 4. gf8( f ef } |
  \trillUnderSlur df[\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf) f,( af'4) |
  \ottava 0 \tuplet 3/2 { af,8( bf af } gf) df( gf'4) |
  df,8[(\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf[) f,]( af') f,( |
  gf4.) \ottava 0 \appoggiatura { gf16 af } gf8( f ef |
  
  \barNumberCheck 9
  \trillUnderSlur df[\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf) f,( af'4) |
  \ottava 0 \tuplet 3/2 { af,8( bf af } gf) df( gf'4) |
  df,8[(\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf[) f,]( af') f,( |
  gf4.) \ottava 0 f8( \acciaccatura { af } gf ef |
  
  \barNumberCheck 17
  c8 ef af c \ottavaUnderSlur \ottava 1 ef ef' |
  f8 df af f \ottava 0 df af |
  \appoggiatura { ef'16 f } ef8 g, af) c,( af''4) |
  \appoggiatura { df,16 f } df8( g, af) df,( af''4) |
  c,,8( ef af c \ottavaUnderSlur \ottava 1 ef ef' |
  f8 df af f \ottava 0 df af |
  \appoggiatura { ef'16 f } ef8 g, af) c,( af'') c,,( |
  df4.) \grace { df16-\slurShapeB ^( ef } df8 c bf |
  
  \barNumberCheck 25
  c8 ef af c \ottavaUnderSlur \ottava 1 ef ef' |
  f8 df af f \ottava 0 df af |
  \appoggiatura { ef'16 f } ef8 g, af) c,( af''4) |
  \appoggiatura { df,16 f } df8( g, af) df,( af''4) |
  c,,8-\slurShapeC ( ef af c \ottavaUnderSlur \ottava 1 ef ef' |
  f8 df af f \ottava 0 df af |
  \appoggiatura { ef'16 f } ef8 g, af) c,( af'') c,,( |
  df4) af'8( df, af'-> df,) |
  \bar "||"
  
  \barNumberCheck 33
  \slashedGrace { <bf df>8^( } <gf' bf>8.[)-\slurShapeD \((\> <f af>16)\! q8.(
    <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf ef>4.( <gf bf df>8) q8.\) <bf df>16\(( |
  <gf' bf>8.[)( <f af>16) q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf gf'>4.\) <bf df>8\( q8.( <gf' bf>16) |
  
  \barNumberCheck 41
  <gf bf>8.[( <f af>16) q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf ef>4.( <gf bf df>8) q8.\) <bf df>16\(( |
  <gf' bf>8.[)( <f af>16) q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf gf'>4.\) gf'8( gf8. gf16 |
  
  \barNumberCheck 49
  <d f bf>4. q8 q8. q16 |
  <ef gf bf>4.) q8( q8. q16 |
  <df ff bf>4. q8 q8. q16 |
  <df ff df'>2 <cf ef cf'>4) |
  <bf df g>4.( q8 q8. q16 |
  <bf df bf'>2 <af c af'>4) |
  \slashedGrace { af'8^( } <gf, c gf'>4\arpeggio <gf c f> <gf c gf'> |
  << 
    { \voiceOne af'2\arpeggio a4 } 
    \new Voice { \voiceFour <f, df'>4\arpeggio c' cf } 
  >> |
  
  \barNumberCheck 57
  \oneVoice \slashedGrace { <bf df>8)^( } <gf' bf>8.[)-\slurShapeD \((\>
    <f af!>16)\! q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf ef>4.( <gf bf df>8) q8.\) <bf df>16\(( |
  <gf' bf>8.[)( <f af>16) q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf gf'>4.\) gf'8( gf8. gf16 |
  
  \barNumberCheck 65
  <d f bf>4. q8 q8. q16 |
  <ef gf bf>4.) q8( q8. q16 |
  <df ff bf>4. q8 q8. q16 |
  <df ff df'>2 <cf ef cf'>4) |
  <bf df g>4.( q8 q8. q16 |
  <bf df bf'>2 <af c af'>4) |
  \slashedGrace { af'8^( } <gf, c gf'>4 <gf c f> <gf c gf'> |
  << 
    { \voiceOne af'2\arpeggio a4 } 
    \new Voice { \voiceFour <f, df'>4\arpeggio c' cf } 
  >> |
  
  \barNumberCheck 73
  \oneVoice \slashedGrace { <bf df>8)^( } <gf' bf>8.[)-\slurShapeD \((\>
    <f af!>16)\! q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf ef>4.( <gf bf df>8) q8.\) <bf df>16\(( |
  <gf' bf>8.[)( <f af>16) q8.( <ef gf>16) q8.( <df f>16]) |
  q4.( <cf ef>8) q8. q16 |
  q4.( <f, cf' df>8) q8. q16 |
  <gf bf gf'>4.\) \appoggiatura { gf'16 af } gf8( f ef |
  \bar "||"
  
  \barNumberCheck 81
  \trillUnderSlur df[\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf) f,( af'4) |
  \ottava 0 \tuplet 3/2 { af,8( bf af } gf) df( gf'4) |
  df,8[(\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf[) f,]( af') f,( |
  gf4.) \ottava 0 \appoggiatura { gf16 af } gf8( f ef |
  
  \barNumberCheck 89
  \trillUnderSlur df[\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf) f,( af'4) |
  \ottava 0 \tuplet 3/2 { af,8( bf af } gf) df( gf'4) |
  df,8[(\trill c] df f af cf! |
  \ottava 1 \tuplet 3/2 { ef8 f ef } df) gf,( bf'4) |
  \tuplet 3/2 { df,8( ef df } cf[) f,]( af') f,( |
  gf4) \ottava 0 r r |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \tag layout { \partial 4. \grace { s8 } r8 r4 }
  \tag midi   { \partial 4. r8 r4 } |
  df4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4( <df' bf'>-.) r |
  
  \barNumberCheck 9
  \clef bass df,4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4( <df' bf'>8-.) r r4 |
  
  \barNumberCheck 17
  \clef bass af,4-. <af' ef' gf> <af c gf'> |
  df,,4-. <af'' df f> q |
  af,4-. <af' ef' gf!> q |
  df,4-. <af' df f> q |
  af,4-. <af' ef' gf> <af c gf'> |
  df,,4-. <af'' df f> q |
  af,4-. <af' ef' gf!> q |
  df,,4-. <af'' df f>-. r|
  
  \barNumberCheck 25
  af,4-. <af' ef' gf> <af c gf'> |
  df,,4-. <af'' df f> q |
  af,4-. <af' ef' gf!> q |
  df,4-. <af' df f> q |
  af,4-. <af' ef' gf> <af c gf'> |
  df,,4-. <af'' df f> q |
  af,4-. <af' ef' gf!> q |
  df,,4-. <af'' df f> <af cf! f> |
  
  \barNumberCheck 33
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  gf,4-. <gf' bf df> q |
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  <gf df'>4-. gf,-. r |
  
  \barNumberCheck 41
  gf,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  gf,4-. <gf' bf df> q |
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  <gf df'>4-. gf,8-. r r4 |
  
  \barNumberCheck 49
  bf4-. <bf' f' af> q |
  <ef,, ef'>4-. <bf'' ef gf> q |
  <gf, gf'>4-. <gf' gf'> q |
  <cf,, cf'>4-. g'''(\< af)-.\! |
  <ef,, ef'>4-. ef'' ef |
  <af,, af'>4-. ef'' ef |
  <af,, af'>4-. ef'' ef |
  <df,, df'>-. <af'' df f> q |
  
  \barNumberCheck 57
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  gf,4-. <gf' bf df> q |
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  <gf df'>4-. gf,-. r |
  
  \barNumberCheck 65
  bf4-. <bf' f' af> q |
  <ef,, ef'>4-. <bf'' ef gf> q |
  <gf, gf'>4-. <gf' gf'> q |
  <cf,, cf'>4-. g'''(\< af)-.\! |
  <ef,, ef'>4-. ef'' ef |
  <af,, af'>4-. ef'' ef |
  <af,, af'>4-. ef'' ef |
  <df,, df'>-. <af'' df f> q |
  
  \barNumberCheck 73
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  gf,4-. <gf' bf df> q |
  gf,,4-. <bf'' df gf> q |
  cf,,4-. <cf'' ef af> q |
  df,,4-. <df' df'> q |
  <gf df'>4-. gf,-. r |
  
  \barNumberCheck 81
  df'4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4( <df' bf'>-.) r |
  
  \barNumberCheck 89
  \clef bass df,4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'!> q |
  gf,4-. <df' gf bf> q |
  \clef bass df,4-. \clef treble <df' f cf'> q |
  gf,4( <df' bf'>-.) r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override TextSpanner.Y-offset = 0 
  \tag layout { \partial 4. \grace { s8^\fBrillante } s4. }
  \tag midi   { \partial 4. s4.\f } |
  s2. * 7 |
  s4. s4\> s8\! |
  
  \barNumberCheck 9
  s2.\p |
  s2. * 6 |
  s4. s4\< s8\! |
  
  \barNumberCheck 17
  s2\f\< s8 s\! |
  s2\> s8 s\! |
  s2. * 2 |
  s2\< s8 s\! |
  s2\> s8 s\! |
  s2. |
  s4. s4\> s8\! |
  
  \barNumberCheck 25
  s2\p\< s8 s\! |
  s2\> s8 s\! |
  s2. * 2 |
  s2\< s8 s\! |
  s2\> s8 s\! |
  s2. |
  s2.^\moltoRit |
  
  \barNumberCheck 33
  s2.^\pCantabile |
  s4.\> s\! |
  s4.\> s\! |
  s4.\> s\! |
  s8.\> s16\! s2 |
  s4.\> s\! |
  s4.\> s\! |
  s4.\> s8\! s4\p |
  
  \barNumberCheck 41
  % s2. * 8 |
  s8.\> s16\! s2 |
  s4.\> s\! |
  s4.\> s\! |
  s4.\> s8\! s8. s16\< |
  s4\! s\> s8. s16\! |
  s4.\> s\! |
  s4.\> s\! |
  s2. |
  
  \barNumberCheck 49
  s4.\mf \crescPocoAPoco s\startTextSpan |
  s2. |
  s2 s8. s16\stopTextSpan |
  s2\f\> s4\! |
  s2.\p |
  s2\> s4\! |
  s2. |
  s4\< s4.\> s8\! |
  
  \barNumberCheck 57
  s2.\p |
  s4.\> s\! |
  s4.\> s\! |
  s4.\> s\! |
  s8.\> s16\! s2 |
  s4.\> s\! |
  s4.\> s\! |
  s2. |
  
  \barNumberCheck 65
  s4.\mf \crescPocoAPoco s\startTextSpan |
  s2. |
  s2 s8. s16\stopTextSpan |
  s2\f\> s4\! |
  s2.\p |
  s2\> s4\! |
  s2. |
  s4\< s4.\> s8\! |
  
  \barNumberCheck 73
  s2.\p |
  s4.\> s\! |
  s4.\> s\! |
  s4.\> s\! |
  s8.\> s16\! s2 |
  s4.\> s\! |
  s4.\> s\! |
  s4. \grace { s8^\fBrillante } s4. |
  
  \barNumberCheck 81
  s2. * 7 |
  s4. s4\> s8\! |
  
  \barNumberCheck 89
  s2.\p |
  s2. * 3 |
  s2.\cresc |
  s2. |
  s2 s8. s16\! |
  s2.\f |
}

tempi = {
  \tempo "Molto vivace" 2. = 88
  \tag layout { \partial 4. \grace { s8 } s4. }
  \tag midi   { \partial 4. s4. } |
  \set Score.tempoHideNote = ##t
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 7 |
  \tempo 4 = 200
  s4 \tempo 4 = 152 s \tempo 4 = 120 s |
  
  \barNumberCheck 33
  \set Score.tempoHideNote = ##f
  \tempo "Meno mosso" 4 = 96
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 7 |
  \set Score.tempoHideNote = ##t
  s4. \tempo "Tempo I" 2. = 88  s |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 6 |
  s2 \tempo 2. = 60 4 |
  s2. |
}

pedal = {
  \tag layout { \partial 4. \grace { s8 } s4. }
  \tag midi   { \partial 4. s4. } |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -2 \sd s\su |
  
  \barNumberCheck 9
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -2 \sd s\su |
  
  \barNumberCheck 17
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 33
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 41
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 49
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 57
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 65
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 73
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  
  \barNumberCheck 81
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -2 \sd s\su |
  
  \barNumberCheck 89
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -2 \sd s\su |
}

forceBreaks = {
  % page 1
  \tag layout { \partial 4. \grace { s8 } s4. }
  \tag midi   { \partial 4. s4. } |
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}

waltzOneNotes =
\score {
  \header {
    title = "Waltz One"
    composer = "Frédéric Chopin"
    opus = "Opus 70, No. 1"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

% \include "articulate.ly"

waltzOneMidi =
\book {
  \bookOutputName "waltz-op70-no1"
  \score {
    \keepWithTag midi
    % \articulate <<
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
