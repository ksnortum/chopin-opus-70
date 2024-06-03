\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

underSlur =
  \tweak avoid-slur #'inside
  \tweak outside-staff-priority ##f 
  \etc
trillUnderSlur = \once \override Script.avoid-slur = #'inside
ottavaUnderSlur = 
  \once \override Staff.OttavaBracket.outside-staff-priority = ##f
dynamicsUnderSlur = \override DynamicLineSpanner.outside-staff-priority = ##f
trillSpanUnderSlur = \once \override TrillSpanner.outside-staff-priority = ##f

crescPocoAPoco = 
  \makeSpanner \markup \large \italic \whiteout \pad-markup #0.25 
  "cresc. poco a poco"

%
% Markup
%

moltoRit = \markup \large \italic "molto rit."
rit = \markup \large \italic rit.
dolce = \markup \large \italic dolce
aTempo = \markup \large \italic "a tempo"
dolceELegato = \markup \large \italic \whiteout "dolce e legato"
pCantabile = \markup { \dynamic p \large \italic cantabile }
fBrillante = \markup { \dynamic f \large \italic brillante }
