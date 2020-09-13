version 1.0

task Showpep {
  input {
    Boolean? format
    Boolean? uppercase
    Boolean? highlight
    Boolean? annotation
    Boolean? source_match
    Boolean? type_match
    Boolean? min_score
    Boolean? max_score
    Boolean? tag_match
    Boolean? value_match
    Boolean? strict_tags
    Boolean? three_letter
    Boolean? number
    Boolean? width
    Boolean? length
    Boolean? margin
    Boolean? offset
    Boolean? html
  }
  command <<<
    showpep \
      ~{if (format) then "-format" else ""} \
      ~{if (uppercase) then "-uppercase" else ""} \
      ~{if (highlight) then "-highlight" else ""} \
      ~{if (annotation) then "-annotation" else ""} \
      ~{if (source_match) then "-sourcematch" else ""} \
      ~{if (type_match) then "-typematch" else ""} \
      ~{if (min_score) then "-minscore" else ""} \
      ~{if (max_score) then "-maxscore" else ""} \
      ~{if (tag_match) then "-tagmatch" else ""} \
      ~{if (value_match) then "-valuematch" else ""} \
      ~{if (strict_tags) then "-stricttags" else ""} \
      ~{if (three_letter) then "-threeletter" else ""} \
      ~{if (number) then "-number" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (margin) then "-margin" else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (html) then "-html" else ""}
  >>>
  parameter_meta {
    format: "menu       [2] Display format (Values: 0 (Enter your\\nown list of things to display); 1 (Sequence\\nonly); 2 (Default sequence with features); 3\\n(Pretty sequence 4:Baroque))"
    uppercase: "range      [If this is left blank, then the sequence\\ncase is left alone.] Regions to put in\\nuppercase.\\nIf this is left blank, then the sequence\\ncase is left alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
    highlight: "range      [(full sequence)] Regions to colour if\\nformatting for HTML.\\nIf this is left blank, then the sequence is\\nleft alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are followed by any valid HTML font\\ncolour.\\nExamples of region specifications are:\\n24-45 blue 56-78 orange\\n1-100 green 120-156 red\\nA file of ranges to colour (one range per\\nline) can be specified as '@filename'."
    annotation: "range      [If this is left blank, then no annotation\\nis added.] Regions to annotate by marking.\\nIf this is left blank, then no annotation is\\nadded.\\nA set of regions is specified by a set of\\npairs of positions followed by optional\\ntext.\\nThe positions are integers.\\nThey are followed by any text (but not\\ndigits when on the command-line).\\nExamples of region specifications are:\\n24-45 new domain 56-78 match to Mouse\\n1-100 First part 120-156 oligo\\nA file of ranges to annotate (one range per\\nline) can be specified as '@filename'."
    source_match: "string     [*] By default any feature source in the\\nfeature table is shown. You can set this to\\nmatch any feature source you wish to show.\\nThe source name is usually either the name\\nof the program that detected the feature or\\nit is the feature table (eg: EMBL) that the\\nfeature came from.\\nThe source may be wildcarded by using '*'.\\nIf you wish to show more than one source,\\nseparate their names with the character '|',\\neg:\\ngene* | embl (Any string)"
    type_match: "string     [*] By default any feature type in the\\nfeature table is shown. You can set this to\\nmatch any feature type you wish to show.\\nSee http://www.ebi.ac.uk/embl/WebFeat/ for a\\nlist of the EMBL feature types and see\\nAppendix A of the Swissprot user manual in\\nhttp://www.expasy.org/sprot/userman.html for\\na list of the Swissprot feature types.\\nThe type may be wildcarded by using '*'.\\nIf you wish to show more than one type,\\nseparate their names with the character '|',\\neg:\\n*UTR | intron (Any string)"
    min_score: "float      [0.0] Minimum score of feature to display\\n(see also maxscore) (Any numeric value)"
    max_score: "float      [0.0] Maximum score of feature to display.\\nIf both minscore and maxscore are zero (the\\ndefault), then any score is ignored (Any\\nnumeric value)"
    tag_match: "string     [*] Tags are the types of extra values that\\na feature may have. By default any feature\\ntag in the feature table is shown. You can\\nset this to match any feature tag you wish\\nto show.\\nThe tag may be wildcarded by using '*'.\\nIf you wish to show more than one tag,\\nseparate their names with the character '|',\\neg:\\ngene | label (Any string)"
    value_match: "string     [*] Tag values are the values associated\\nwith a feature tag. Tags are the types of\\nextra values that a feature may have. By\\ndefault any feature tag value in the feature\\ntable is shown. You can set this to match\\nany feature tag value you wish to show.\\nThe tag value may be wildcarded by using\\n'*'.\\nIf you wish to show more than one tag value,\\nseparate their names with the character\\n'|', eg:\\npax* | 10 (Any string)"
    strict_tags: "boolean    [N] By default if any tag/value pair in a\\nfeature matches the specified tag and value,\\nthen all the tags/value pairs of that\\nfeature will be displayed. If this is set to\\nbe true, then only those tag/value pairs in\\na feature that match the specified tag and\\nvalue will be displayed."
    three_letter: "boolean    [N] Display protein sequences in\\nthree-letter code"
    number: "boolean    [N] Number the sequences"
    width: "integer    [60] Width of sequence to display (Integer 1\\nor more)"
    length: "integer    [0] Line length of page (0 for indefinite)\\n(Integer 0 or more)"
    margin: "integer    [10] Margin around sequence for numbering\\n(Integer 0 or more)"
    offset: "integer    [1] Offset to start numbering the sequence\\nfrom (Any integer value)"
    html: "boolean    [N] Use HTML formatting"
  }
  output {
    File out_stdout = stdout()
  }
}