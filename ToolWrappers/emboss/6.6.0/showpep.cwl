class: CommandLineTool
id: showpep.cwl
inputs:
- id: in_format
  doc: "menu       [2] Display format (Values: 0 (Enter your\nown list of things to\
    \ display); 1 (Sequence\nonly); 2 (Default sequence with features); 3\n(Pretty\
    \ sequence 4:Baroque))"
  type: boolean
  inputBinding:
    prefix: -format
- id: in_uppercase
  doc: "range      [If this is left blank, then the sequence\ncase is left alone.]\
    \ Regions to put in\nuppercase.\nIf this is left blank, then the sequence\ncase\
    \ is left alone.\nA set of regions is specified by a set of\npairs of positions.\n\
    The positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\n\
    Examples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean
  inputBinding:
    prefix: -uppercase
- id: in_highlight
  doc: "range      [(full sequence)] Regions to colour if\nformatting for HTML.\n\
    If this is left blank, then the sequence is\nleft alone.\nA set of regions is\
    \ specified by a set of\npairs of positions.\nThe positions are integers.\nThey\
    \ are followed by any valid HTML font\ncolour.\nExamples of region specifications\
    \ are:\n24-45 blue 56-78 orange\n1-100 green 120-156 red\nA file of ranges to\
    \ colour (one range per\nline) can be specified as '@filename'."
  type: boolean
  inputBinding:
    prefix: -highlight
- id: in_annotation
  doc: "range      [If this is left blank, then no annotation\nis added.] Regions\
    \ to annotate by marking.\nIf this is left blank, then no annotation is\nadded.\n\
    A set of regions is specified by a set of\npairs of positions followed by optional\n\
    text.\nThe positions are integers.\nThey are followed by any text (but not\ndigits\
    \ when on the command-line).\nExamples of region specifications are:\n24-45 new\
    \ domain 56-78 match to Mouse\n1-100 First part 120-156 oligo\nA file of ranges\
    \ to annotate (one range per\nline) can be specified as '@filename'."
  type: boolean
  inputBinding:
    prefix: -annotation
- id: in_source_match
  doc: "string     [*] By default any feature source in the\nfeature table is shown.\
    \ You can set this to\nmatch any feature source you wish to show.\nThe source\
    \ name is usually either the name\nof the program that detected the feature or\n\
    it is the feature table (eg: EMBL) that the\nfeature came from.\nThe source may\
    \ be wildcarded by using '*'.\nIf you wish to show more than one source,\nseparate\
    \ their names with the character '|',\neg:\ngene* | embl (Any string)"
  type: boolean
  inputBinding:
    prefix: -sourcematch
- id: in_type_match
  doc: "string     [*] By default any feature type in the\nfeature table is shown.\
    \ You can set this to\nmatch any feature type you wish to show.\nSee http://www.ebi.ac.uk/embl/WebFeat/\
    \ for a\nlist of the EMBL feature types and see\nAppendix A of the Swissprot user\
    \ manual in\nhttp://www.expasy.org/sprot/userman.html for\na list of the Swissprot\
    \ feature types.\nThe type may be wildcarded by using '*'.\nIf you wish to show\
    \ more than one type,\nseparate their names with the character '|',\neg:\n*UTR\
    \ | intron (Any string)"
  type: boolean
  inputBinding:
    prefix: -typematch
- id: in_min_score
  doc: "float      [0.0] Minimum score of feature to display\n(see also maxscore)\
    \ (Any numeric value)"
  type: boolean
  inputBinding:
    prefix: -minscore
- id: in_max_score
  doc: "float      [0.0] Maximum score of feature to display.\nIf both minscore and\
    \ maxscore are zero (the\ndefault), then any score is ignored (Any\nnumeric value)"
  type: boolean
  inputBinding:
    prefix: -maxscore
- id: in_tag_match
  doc: "string     [*] Tags are the types of extra values that\na feature may have.\
    \ By default any feature\ntag in the feature table is shown. You can\nset this\
    \ to match any feature tag you wish\nto show.\nThe tag may be wildcarded by using\
    \ '*'.\nIf you wish to show more than one tag,\nseparate their names with the\
    \ character '|',\neg:\ngene | label (Any string)"
  type: boolean
  inputBinding:
    prefix: -tagmatch
- id: in_value_match
  doc: "string     [*] Tag values are the values associated\nwith a feature tag. Tags\
    \ are the types of\nextra values that a feature may have. By\ndefault any feature\
    \ tag value in the feature\ntable is shown. You can set this to match\nany feature\
    \ tag value you wish to show.\nThe tag value may be wildcarded by using\n'*'.\n\
    If you wish to show more than one tag value,\nseparate their names with the character\n\
    '|', eg:\npax* | 10 (Any string)"
  type: boolean
  inputBinding:
    prefix: -valuematch
- id: in_strict_tags
  doc: "boolean    [N] By default if any tag/value pair in a\nfeature matches the\
    \ specified tag and value,\nthen all the tags/value pairs of that\nfeature will\
    \ be displayed. If this is set to\nbe true, then only those tag/value pairs in\n\
    a feature that match the specified tag and\nvalue will be displayed."
  type: boolean
  inputBinding:
    prefix: -stricttags
- id: in_three_letter
  doc: "boolean    [N] Display protein sequences in\nthree-letter code"
  type: boolean
  inputBinding:
    prefix: -threeletter
- id: in_number
  doc: boolean    [N] Number the sequences
  type: boolean
  inputBinding:
    prefix: -number
- id: in_width
  doc: "integer    [60] Width of sequence to display (Integer 1\nor more)"
  type: boolean
  inputBinding:
    prefix: -width
- id: in_length
  doc: "integer    [0] Line length of page (0 for indefinite)\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -length
- id: in_margin
  doc: "integer    [10] Margin around sequence for numbering\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -margin
- id: in_offset
  doc: "integer    [1] Offset to start numbering the sequence\nfrom (Any integer value)"
  type: boolean
  inputBinding:
    prefix: -offset
- id: in_html
  doc: boolean    [N] Use HTML formatting
  type: boolean
  inputBinding:
    prefix: -html
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- showpep
