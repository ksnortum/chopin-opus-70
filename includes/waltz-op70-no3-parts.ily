%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0.5) (0 . 1.5) (0 . 1) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'((0 . -1.5) (0 . 0) (0 . 1.5) (0 . -1)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 1.25) (0 . 0) (0 . 0.25)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 3) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ) \etc
slurShapeH = \shape #'(
                        ((0 . 3) (0 . 3.5) (0 . 3.5) (0 . 4))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 4.25) (0 . 5.25) (1 . 5.25) (1 . 4.25)) \etc
slurShapeK = \shape #'((-1 . 4) (-1 . 5.25) (1 . 5.25) (1 . 4)) \etc
slurShapeL = \shape #'((0 . 0.5) (0 . 1.1) (0 . 1.1) (0 . 0.5)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 0))
                        ) \etc
slurShapeP = \shape #'((0 . 2) (0 . 1) (0 . 1) (0 . 2)) \etc
slurShapeQ = \shape #'(
                        ((0 . 2) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

moveDynamicsA = \override DynamicLineSpanner.Y-offset = 4.5
moveDynamicsB = \override DynamicLineSpanner.Y-offset = 3.5
moveAccidentalA = \once \override Accidental.extra-offset = #'(0.2 . 0)

%%% Music %%%

global = {
  \time 3/4
  \key df \major
}

rightHandUpper = \relative {
  \tempo "Moderato" 4 = 108
  \partial 4 \voiceOne bf'8-\slurShapeA ( af |
  \dynamicsUnderSlur \moveDynamicsA \after 8 ^\> \after 4. \! f'2~ f8 gf! | 
  \moveDynamicsB \after 8^\> \after 16*5 \! f4. f8 ef4 |
  df4. c8 bf ef |
  df8\prall c bf c af4) |
  f'2-\slurShapeB (~ f8 gf! | 
  \after 8^\> \after 16*5 \!f4. f8 ef4~ |
  ef8[ df] bf c' bf c, |
  df4) r r |
  
  \barNumberCheck 9
  \dynamicsUnderSlur \moveDynamicsA \after 8 ^\> \after 4. \! f2-\slurShapeC (~
    f8 gf! | 
  \moveDynamicsB \after 8^\> \after 16*5 \! f4. f8 ef4 |
  df4. c8 bf ef |
  df8\prall c bf c af4) |
  f'2-\slurShapeD (~ f8 gf! | 
  \after 8^\> \after 16*5 \!f4. f8 ef4~ |
  ef8[ df] bf c' bf c, |
  df4) r r | 
  
  \barNumberCheck 17
  f4.->-\slurShapeE ( ef8 f ef |
  f8-> ef f-> ef f-> ef) |
  ef4.->-\slurShapeE ( df8 ef df |
  ef-> df ef-> df ef-> df) |
  df8-\slurShapeF ( ef df\prall c df ef |
  f4 ef8 df c bf |
  bf8 af bf af bf af |
  df4.) \oneVoice c8-\slurShapeG ( df d |
  
  \barNumberCheck 25
  \voiceOne f4.-> ef8 f ef |
  f8-> ef f-> ef f-> ef) |
  ef4.->-\slurShapeE ( df8 ef df |
  ef-> df ef-> df ef-> df) |
  df8-\slurShapeF ( ef df\prall c df ef |
  f4 ef8 df c bf |
  bf8 af bf af bf af |
  df4) \oneVoice r df,-\slurShapeH ^( |
  
  \repeat volta 2 {
    \barNumberCheck 33
    \key gf \major
    \voiceOne bf'2.-> |
    gf2-> f4 |
    af2-> g4 |
    bf2.) |
    ef2( df4 |
    cf2 c4 |
    df2 <af c>4 |
    <cf! ef>4 <bf df> <af cf>) |
    
    \barNumberCheck 41
    <gf bf>2.-\slurShapeE (
    gf2-> f4 |
    af2-> g4 |
    bf2.) |
    ef2-\slurShapeP ( df4 |
    cf2 c4 |
    df4) \oneVoice r <f, cf'! df>-. |
    \alternative {
      { <gf bf gf'>4-. r df-\slurShapeJ \laissezVibrer | }
      { <gf bf gf'>4-. r <gf bf> | }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 50
    \key df \major
    q4.^( <c, af'>8 <gf' bf> <c, af'> |
    \voiceOne <df f>4 af'8 df <df f>4) |
    c2->( c4 |
    \oneVoice <f, df'> <af c>8 <gf bf> <f af>4) |
    <gf bf>4.^( <c, af'>8 <gf' bf> <c, af'> |
    \voiceOne <df f>4 af'8 df <df f>4) |
    c2.->( |
    \alternative {
      { \oneVoice <f, df'>2) <f af>4 | }
      { \oneVoice <f df'-\slurShapeL \repeatTie>4 r df-\slurShapeM ^( }
    }
  }
  
  \barNumberCheck 59
  \key gf \major
  \voiceOne bf'2.-> |
  gf2-> f4 |
  af2-> g4 |
  bf2.) |
  ef2-\slurShapeQ ( df4 |
  cf2 c4 |
  df2 <af c>4 |
  <cf! ef>4 <bf df> <af cf>) |
  
  \barNumberCheck 67
  <gf bf>2.-\slurShapeE (
  gf2-> f4 |
  af2-> g4 |
  bf2.) |
  ef2-\slurShapeQ ( df4 |
  cf2 c4 |
  df4) \oneVoice r <f, cf'! df>-. |
  <gf bf gf'>4-. r \voiceOne bf8-\slurShapeA ( af |
  
  \barNumberCheck 75
  \key df \major
  \dynamicsUnderSlur \moveDynamicsA \after 8 ^\> \after 4. \! f'2~ f8 
    \moveAccidentalA gf! | 
  \moveDynamicsB \after 8^\> \after 16*5 \! f4. f8 ef4 |
  df4. c8 bf ef |
  df8\prall c bf c af4) |
  f'2-\slurShapeD (~ f8 gf! | 
  \after 8^\> \after 16*5 \!f4. f8 ef4~ |
  ef8[ df] bf c' bf c, |
  df4) r r |
  
  \barNumberCheck 83
  \dynamicsUnderSlur \moveDynamicsA \after 8 ^\> \after 4. \! f2(~ f8 gf! | 
  \moveDynamicsB \after 8^\> \after 16*5 \! f4. f8 ef4 |
  df4. c8 bf ef |
  df8\prall c bf c af4) |
  f'2-\slurShapeD (~ f8 gf! | 
  \after 8^\> \after 16*5 \!f4. f8 ef4~ |
  ef8[ df] bf c' bf c, |
  df4) r r | 
  
  \barNumberCheck 91
  f4.->-\slurShapeE ( ef8 f ef |
  f8-> ef f-> ef f-> ef) |
  ef4.->-\slurShapeE ( df8 ef df |
  ef-> df ef-> df ef-> df) |
  df8-\slurShapeF ( ef df\prall c df ef |
  f4 ef8 df c bf |
  bf8 af bf af bf af |
  df4.) \oneVoice c8-\slurShapeG ( df d |
  
  \barNumberCheck 99
  \voiceOne f4.-> ef8 f ef |
  f8-> ef f-> ef f-> ef) |
  ef4.->-\slurShapeE ( df8 ef df |
  ef-> df ef-> df ef-> df) |
  df8-\slurShapeF ( ef df\prall c df ef |
  f4 ef8 df c bf |
  bf8 af bf af bf af |
  df4) \oneVoice r r |
  \bar "|."
}

rightHandLower = \relative {
  \repeat segno 2
  \partial 4 s4 |
  \voiceFour 
  r8 f'( gf g af4)~ |
  af8 g af bff af gf~ |
  gf8 f af4 g |
  gf!2. |
  r8 f(\< gf g af4)~\! |
  af8 af( bff4) af!8 gf |
  f4 bf4. c8 |
  df8 f,( gf g bf af) |
  
  \barNumberCheck 9
  r8 f( gf g af4)~ |
  af8 g af bff af gf~ |
  gf8 f af4 g |
  gf!2. |
  r8 f(\< gf g af4)~\! |
  af8 af( bff4) af!8 gf |
  f4 bf4. c8 |
  df8 f,( gf g af c |
  
  \barNumberCheck 17
  df4.) g,8 df' g, |
  c8 af c af c af |
  cf4. f,8 cf' f, |
  bf8 gf bf gf bf gf |
  bff gf bff gf bff gf |
  af8 f af f ff df |
  f!8 c gf' c, gf' c, |
  f4. s4. |
  
  \barNumberCheck 25
  df'!4. g,8 df' g, |
  c8 af c af c af |
  cf4. f,8 cf' f, |
  bf8 gf bf gf bf gf |
  bff gf bff gf bff gf |
  af8 f af f ff df |
  f!8 c gf' c, gf' c, |
  f4 s2 |
  
  \repeat volta 2 {
    \barNumberCheck 33
    \key gf \major
    r4 <bf, df> q |
    r4 df df|
    r4 df df|
    r4 <ef g> q |
    af4 <ef af> <ef g> |
    <ef af>4 q <ef bff'> |
    <df af'>4 q gf |
    gf4 f8 ef f4 |
    
    \barNumberCheck 41
    r4 <bf, df> q |
    r4 df df|
    r4 df df|
    r4 <ef g> q |
    <ef af> q <ef g> |
    <ef af>4 q <ef bff'> |
    <df af'>4 s2 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 50
    s2. |
    s4 f2*1/4 af4. |
    <gf af f'>4.\arpeggio <gf ef'>8 <af f'> <gf ef'> |
    s2. * 2 |
    s4 f2*1/4 af4. |
    <af f'>4.\arpeggio <gf ef'>8 <af f'> <gf ef'> |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 59
  \key gf \major
  r4 <bf, df> q |
  r4 df df|
  r4 df df|
  r4 <ef g> q |
  af4 <ef af> <ef g> |
  <ef af>4 q <ef bff'> |
  <df af'>4 q gf |
  gf4 f8 ef f4 |
  
  \barNumberCheck 67
  r4 <bf, df> q |
  r4 df df|
  r4 df df|
  r4 <ef g> q |
  af4 <ef af> <ef g> |
  <ef af>4 q <ef bff'> |
  <df af'>4 s2 |
  s2. |
  
  \barNumberCheck 75
  \key df \major 
  r8 f( gf g af4)~ |
  af8 g af bff af gf~ |
  gf8 f af4 g |
  gf!2. |
  r8 f(\< gf g af4)~\! |
  af8 af( bff4) af!8 gf |
  f4 bf4. c8 |
  df8 f,( gf g bf af) |
  
  \barNumberCheck 83
  r8 f( gf g af4)~ |
  af8 g af bff af gf~ |
  gf8 f af4 g |
  gf!2. |
  r8 f(\< gf g af4)~\! |
  af8 af( bff4) af!8 gf |
  f4 bf4. c8 |
  df8 f,( gf g af c |
  
  \barNumberCheck 91
  df4.) g,8 df' g, |
  c8 af c af c af |
  cf4. f,8 cf' f, |
  bf8 gf bf gf bf gf |
  bff gf bff gf bff gf |
  af8 f af f ff df |
  f!8 c gf' c, gf' c, |
  f4. s4. |
  
  \barNumberCheck 99
  df'!4. g,8 df' g, |
  c8 af c af c af |
  cf4. f,8 cf' f, |
  bf8 gf bf gf bf gf |
  bff gf bff gf bff gf |
  af8 f af f ff df |
  f!8 c gf' c, gf' c, |
  f4 s2 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \partial 4 r4
  df4 <f af df> q |
  af,4 <ef' gf! c> q |
  << { r4 <bf' df> q } \\ { bf,2 ef4 } >> |
  af,4 <af' ef'> q |
  df,4( <f af df>) q |
  af,4 <ef' gf c> a,( |
  bf4) <gf' bf ef>( <af ef' gf> |
  <df f>4) r r |
  
  \barNumberCheck 9
  df,4 <f af df> q |
  af,4 <ef' gf! c> q |
  << { r4 <bf' df> q } \\ { bf,2 ef4 } >> |
  af,4 <af' ef'> q |
  df,4 <f af df> q |
  af,4 <ef' gf c> a,( |
  bf4) <gf' bf ef>( <af ef' gf> |
  <df f>4) r r |
  
  \barNumberCheck 17
  ef,,4-. <ef' bf' ef> q |
  af,-. <af' c ef>-. r |
  df,,4-. <df' af' df> q |
  gf,4-. <gf' bf df>-. r |
  gf,4-. <gf' bff df> q |
  df4( <f af df>) g,( |
  af4 af') <af, af'>( |
  <df af'>4-.) df,-. r |
  
  \barNumberCheck 25
  <ef ef'>4-. <ef' bf' ef> q |
  <af, af'>4-. <af' c ef>-. r |
  <df,, df'>4-. <df' af' df> q |
  <gf, gf'>4-. <gf' bf df>-. r |
  gf,4-. <gf' bff df> q |
  df4( <f af df>) g,( |
  af4 af') <af, af'>( |
  <df af'>4-.) df,-. r |
  
  \repeat volta 2 {
    \barNumberCheck 33
    \key gf \major
    << 
      { \voiceThree gf4-\slurShapeI ( s2 } 
      \new Voice { \voiceTwo gf8\< df' ef f gf af\! } 
    >> |
    \oneVoice bf2\> af4\! |
    cf2\> bf4-\tweak to-barline ##f \< |
    ef2->\! df4) |
    cf4-\slurShapeN ( df8 cf bf4 |
    af4 bf8 af gf!4 |
    f4 gf8 f ef4 |
    \trillSpanUnderSlur \afterGrace 7/8 df2.\startTrillSpan 
      { c16\stopTrillSpan df } |
    
    \barNumberCheck 41
    << 
      { \voiceThree gf,4)-\slurShapeI( s2 } 
      \new Voice { \voiceTwo gf8\< df' ef f gf af\! } 
    >> |
    \oneVoice bf2\> af4\! |
    cf2\> bf4\! |
    ef2->\> df4)\! |
    cf4( df8 cf bf4 |
    af4 bf8 af gf!4 |
    f8\< ef df cf! bf af\! |
    \alternative {
      { gf4-.) r r | }
      { gf4-.-\slurShapeK \repeatTie r r }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 50
    \key df \major
    <af, af'>4-. <af' af'> q |
    <df, df'>4-. <df' af'>-. r |
    <af af'>4-. <af' ef'> q |
    df,4( <f af df>-.) r |
    <af,, af'>4-. <af' af'> q |
    <df, df'>4-. <df' af'>-. r |
    <af af'>4-. <af' ef'> q |
    \alternative {
      { df,4( <f af df>-.) r |}
      { df4( <f af df>-.) r |}
    }
  }
  
  \barNumberCheck 59
  \key gf \major
  << 
    { \voiceThree gf,4-\slurShapeI ( s2 } 
    \new Voice { \voiceTwo gf8\< df' ef f gf af\! } 
  >> |
  \oneVoice bf2\> af4\! |
  cf2\> bf4\! |
  ef2->\> df4)\! |
  cf4-\slurShapeO ( df8 cf bf4 |
  af4 bf8 af gf!4 |
  f4 gf8 f ef4 |
  \trillSpanUnderSlur \afterGrace 7/8 df2.\startTrillSpan 
    { c16\stopTrillSpan df } |
    
  \barNumberCheck 67
  << 
    { \voiceThree gf,4)-\slurShapeI ( s2 } 
    \new Voice { \voiceTwo gf8\< df' ef f gf af\! } 
  >> |
  \oneVoice bf2\> af4\! |
  cf2\> bf4\! |
  ef2->\> df4)\! |
  cf4( df8 cf bf4 |
  af4 bf8 af gf!4 |
  f8\< ef df cf! bf af\! |
  gf4-.) r r
  
  \barNumberCheck 75
  \key df \major 
  df'4 <f af df> q |
  af,4 <ef' gf! c> q |
  << { r4 <bf' df> q } \\ { bf,2 ef4 } >> |
  af,4 <af' ef'> q |
  df,4( <f af df>) q |
  af,4 <ef' gf c> a,( |
  bf4) <gf' bf ef>( <af ef' gf> |
  <df f>4) r r |
  
  \barNumberCheck 83
  df,4 <f af df> q |
  af,4 <ef' gf! c> q |
  << { r4 <bf' df> q } \\ { bf,2 ef4 } >> |
  af,4 <af' ef'> q |
  df,4 <f af df> q |
  af,4 <ef' gf c> a,( |
  bf4) <gf' bf ef>( <af ef' gf> |
  <df f>4) r r |
  
  \barNumberCheck 91
  ef,,4-. <ef' bf' ef> q |
  af,-. <af' c ef>-. r |
  df,,4-. <df' af' df> q |
  gf,4-. <gf' bf df>-. r |
  gf,4-. <gf' bff df> q |
  df4( <f af df>) g,( |
  af4 af') <af, af'>( |
  <df af'>4-.) df,-. r |
  
  \barNumberCheck 99
  <ef ef'>4-. <ef' bf' ef> q |
  <af, af'>4-. <af' c ef>-. r |
  <df,, df'>4-. <df' af' df> q |
  <gf, gf'>4-. <gf' bf df>-. r |
  gf,4-. <gf' bff df> q |
  df4( <f af df>) g,( |
  af4 af') <af, af'>( |
  <df af'>4-.) df,-. r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \partial 4 s4^\dolceELegato |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 5 |
  s4 s8\> s\! s4 |
  s2. |
  s2\< s8 s\! |
  
  \barNumberCheck 17
  s2.\mf |
  s2. * 3 |
  s2\< s8 s\! |
  s4.\> s\! |
  s2.\dim |
  s4. s4\< s8\! |
  
  \barNumberCheck 25
  s2.\mf |
  s2. * 3 |
  s2\< s8 s\! |
  s2.\f |
  s2\> s8 s\! |
  s2.\p |
  
  \repeat volta 2 {
    \barNumberCheck 33
    % gf major
    s2.\p |
    s4 s2\cresc |
    s2. * 2 |
    s2.\p |
    s2. |
    s2\< s4\! |
    s2\> s4\! |
    
    \barNumberCheck 41
    s2. * 2 |
    s4 s2\cresc |
    s2. * 3 |
    s2 s4\f |
    \alternative {
      { s2. | }
      { s2 s4\p | }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 50
    s2.\p |
    s2. * 6 |
    \alternative {
       { s2. | }
       { s2. | }
    }
  }
  
  \barNumberCheck 59
  % gf major
  s2.\p |
  s4 s2\cresc |
  s2. * 2 |
  s2.\p |
  s2. |
  s2\< s4\! |
  s2\> s4\! |
  
  \barNumberCheck 67
  s2. * 2 |
  s4 s2\cresc |
  s2. * 3 |
  s2 s4\f |
  s2 s4^\dolceELegato |
  
  \barNumberCheck 75
  s2. * 8 |
  
  \barNumberCheck 83
  s2. * 5 |
  s4 s8\> s\! s4 |
  s2. |
  s2\< s8 s\! |
  
  \barNumberCheck 91
  s2.\mf |
  s2. * 3 |
  s2\< s8 s\! |
  s4.\> s\! |
  s2.\dim |
  s4. s4\< s8\! |
  
  \barNumberCheck 99
  s2.\mf |
  s2. * 3 |
  s2\< s8 s\! |
  s2.\f |
  s2\> s8 s\! |
  s2.\p |
}

pedal = {
  \partial 4 s4
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s8\su s\sd s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s\su |
  s4 s\sd s\su |
  s2. |
  
  \barNumberCheck 9
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s8\su s\sd s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s\su |
  s4 s\sd s\su |
  s2. |
  
  \barNumberCheck 17
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.\sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2. |
  s4.\sd s-\tweak Y-offset -1 \su |
  
  \barNumberCheck 25
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2. |
  s4.\sd s-\tweak Y-offset -1 \su |
  
  \repeat volta 2 {
    \barNumberCheck 33
    % gf major
    s2. * 7 |
    s4\sd s2\su |
    
    \barNumberCheck 41
    s2. * 7 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 50
    s4.-\tweak Y-offset -2 \sd s\su |
    s2-\tweak Y-offset -1 \sd s4\su |
    s4.-\tweak Y-offset -1 \sd s\su |
    s4.\sd s\su |
    s4.-\tweak Y-offset -2 \sd s\su |
    s2-\tweak Y-offset -1 \sd s4\su |
    s4.\sd s\su |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 59
  % gf major
  s2. * 7 |
  s4\sd s2\su |
  
  \barNumberCheck 67
  s2. * 8 |
  
  \barNumberCheck 75
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s8\su s\sd s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s\su |
  s4 s\sd s\su |
  s2. |
  
  \barNumberCheck 83
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s8\su s\sd s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -1 \sd s8\su s\sd s\su |
  s4.\sd s\su |
  s4 s\sd s\su |
  s2. |
  
  \barNumberCheck 91
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.\sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2. |
  s4.\sd s-\tweak Y-offset -1 \su |
  
  \barNumberCheck 99
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.-\tweak Y-offset -1 \sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2. |
  s4.\sd s-\tweak Y-offset -1 \su |
}

forceBreaks = {
  % page 1
  \partial 4 s4
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
}

waltzThreeNotes =
\score {
  \header {
    title = "Waltz Three"
    composer = "Frédéric Chopin"
    opus = "Opus 70, No. 3"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

waltzThreeMidi =
\book {
  \bookOutputName "waltz-op70-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
