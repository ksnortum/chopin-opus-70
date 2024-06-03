%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/waltz-op70-no1-parts.ily"
\include "includes/waltz-op70-no2-parts.ily"
\include "includes/waltz-op70-no3-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDF

\tocItem \markup \concat { 
  "No. 1, Molto vivace in G" \raise #0.75 \teeny \flat " major" 
}
\waltzOneNotes
\pageBreak

\tocItem \markup "No. 2, Tempo giusto in F minor"
\waltzTwoNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 3, Moderato in D" \raise #0.75 \teeny \flat " major" 
}
\waltzThreeNotes


% Midi

\waltzOneMidi
\waltzTwoMidi
\waltzThreeMidi
