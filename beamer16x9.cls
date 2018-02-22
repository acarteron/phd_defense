% This changes the beamer slide aspect ratio.

\ProvidesClass{beamer16x9}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[aspectratio=169]{beamer}
\endinput