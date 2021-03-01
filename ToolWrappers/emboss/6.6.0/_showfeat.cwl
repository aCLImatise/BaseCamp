class: CommandLineTool
id: _showfeat.cwl
inputs:
- id: in_source_match
  doc: "string     [*] By default any feature source in the\nfeature table is shown.\
    \ You can set this to\nmatch any feature source you wish to show.\nThe source\
    \ name is usually either the name\nof the program that detected the feature or\n\
    it is the feature table (eg: EMBL) that the\nfeature came from.\nThe source may\
    \ be wildcarded by using '*'.\nIf you wish to show more than one source,\nseparate\
    \ their names with the character '|',\neg:\ngene* | embl (Any string)"
  type: boolean?
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
  type: boolean?
  inputBinding:
    prefix: -typematch
- id: in_tag_match
  doc: "string     [*] Tags are the types of extra values that\na feature may have.\
    \ For example in the EMBL\nfeature table, a 'CDS' type of feature may\nhave the\
    \ tags '/codon', '/codon_start',\n'/db_xref', '/EC_number', '/evidence',\n'/exception',\
    \ '/function', '/gene',\n'/label', '/map', '/note', '/number',\n'/partial', '/product',\
    \ '/protein_id',\n'/pseudo', '/standard_name', '/translation',\n'/transl_except',\
    \ '/transl_table', or\n'/usedin'. Some of these tags also have\nvalues, for example\
    \ '/gene' can have the\nvalue of the gene name.\nBy default any feature tag in\
    \ the feature\ntable is shown. You can set this to match\nany feature tag you\
    \ wish to show.\nThe tag may be wildcarded by using '*'.\nIf you wish to show\
    \ more than one tag,\nseparate their names with the character '|',\neg:\ngene\
    \ | label (Any string)"
  type: boolean?
  inputBinding:
    prefix: -tagmatch
- id: in_value_match
  doc: "string     [*] Tag values are the values associated\nwith a feature tag. Tags\
    \ are the types of\nextra values that a feature may have. For\nexample in the\
    \ EMBL feature table, a 'CDS'\ntype of feature may have the tags '/codon',\n'/codon_start',\
    \ '/db_xref', '/EC_number',\n'/evidence', '/exception', '/function',\n'/gene',\
    \ '/label', '/map', '/note',\n'/number', '/partial', '/product',\n'/protein_id',\
    \ '/pseudo', '/standard_name',\n'/translation', '/transl_except',\n'/transl_table',\
    \ or '/usedin'. Only some of\nthese tags can have values, for example\n'/gene'\
    \ can have the value of the gene name.\nBy default any feature tag value in the\n\
    feature table is shown. You can set this to\nmatch any feature tag value you wish\
    \ to\nshow.\nThe tag value may be wildcarded by using\n'*'.\nIf you wish to show\
    \ more than one tag value,\nseparate their names with the character\n'|', eg:\n\
    pax* | 10 (Any string)"
  type: boolean?
  inputBinding:
    prefix: -valuematch
- id: in_sort
  doc: "menu       [start] Sort features by Type, Start or\nSource, Nosort (don't\
    \ sort - use input\norder) or join coding regions together and\nleave other features\
    \ in the input order\n(Values: source (Sort by Source); start\n(Sort by Start\
    \ position); type (Sort by\nType); nosort (No sorting done))"
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_join_features
  doc: boolean    [N] Join coding regions together
  type: boolean?
  inputBinding:
    prefix: -joinfeatures
- id: in_annotation
  doc: "range      [If this is left blank, then no annotation\nis added.] Regions\
    \ to annotate by marking.\nIf this is left blank, then no annotation is\nadded.\n\
    A set of regions is specified by a set of\npairs of positions followed by optional\n\
    text.\nThe positions are integers.\nThey are followed by any text (but not\ndigits\
    \ when on the command-line).\nExamples of region specifications are:\n24-45 new\
    \ domain 56-78 match to Mouse\n1-100 First part 120-156 oligo\nA file of ranges\
    \ to annotate (one range per\nline) can be specified as '@filename'."
  type: boolean?
  inputBinding:
    prefix: -annotation
- id: in_html
  doc: boolean    [N] Use HTML formatting
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_width
  doc: "integer    [60] You can expand (or contract) the width\nof the ASCII-character\
    \ graphics display of\nthe positions of the features using this\nvalue.\nFor example,\
    \ a width of 80 characters would\ncover a standard page width and a width a 10\n\
    characters would be nearly unreadable.\nIf the width is set to less than 4, the\n\
    graphics lines and the scale line will not\nbe displayed. (Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -width
- id: in_collapse
  doc: "boolean    [N] If this is set, then features from the\nsame source and of\
    \ the same type and sense\nare all printed on the same line. For\ninstance if\
    \ there are several features from\nthe EMBL feature table (ie. the same source)\n\
    which are all of type 'exon' in the same\nsense, then they will all be displayed\
    \ on\nthe same line. This makes it hard to\ndistinguish overlapping features.\n\
    If this is set to false then each feature is\ndisplayed on a separate line making\
    \ it\neasier to distinguish where features start\nand end."
  type: boolean?
  inputBinding:
    prefix: -collapse
- id: in_strand
  doc: "boolean    [N] Set this if you wish to display the\nstrand of the features.\
    \ Protein features are\nalways directionless (indicated by '0'),\nforward is indicated\
    \ by '+' and reverse is\n'-'."
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_source_show
  doc: "boolean    [N] Set this if you wish to display the\norigin of the features.\n\
    The source name is usually either the name\nof the program that detected the feature\
    \ or\nit is the name of the feature table (eg:\nEMBL) that the feature came from."
  type: boolean?
  inputBinding:
    prefix: -sourceshow
- id: in_position
  doc: "boolean    [N] Set this if you wish to display the\nstart and end position\
    \ of the features. If\nseveral features are being displayed on the\nsame line,\
    \ then the start and end positions\nwill be joined by a comma, for example:\n\
    '189-189,225-225'."
  type: boolean?
  inputBinding:
    prefix: -position
- id: in_tags_how
  doc: "boolean    [N] Set this to be false if you do not wish\nto display the tags\
    \ and values of the\nfeatures."
  type: boolean?
  inputBinding:
    prefix: -tagshow
- id: in_strict_tags
  doc: "boolean    [N] By default if any tag/value pair in a\nfeature matches the\
    \ specified tag and value,\nthen all the tags/value pairs of that\nfeature will\
    \ be displayed. If this is set to\nbe true, then only those tag/value pairs in\n\
    a feature that match the specified tag and\nvalue will be displayed."
  type: boolean?
  inputBinding:
    prefix: -stricttags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _showfeat
