version 1.0

task Showfeat {
  input {
    Boolean? source_match
    Boolean? type_match
    Boolean? tag_match
    Boolean? value_match
    Boolean? sort
    Boolean? join_features
    Boolean? annotation
    Boolean? html
    Boolean? width
    Boolean? collapse
    Boolean? strand
    Boolean? source_show
    Boolean? position
    Boolean? tags_how
    Boolean? strict_tags
  }
  command <<<
    showfeat \
      ~{if (source_match) then "-sourcematch" else ""} \
      ~{if (type_match) then "-typematch" else ""} \
      ~{if (tag_match) then "-tagmatch" else ""} \
      ~{if (value_match) then "-valuematch" else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if (join_features) then "-joinfeatures" else ""} \
      ~{if (annotation) then "-annotation" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (collapse) then "-collapse" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (source_show) then "-sourceshow" else ""} \
      ~{if (position) then "-position" else ""} \
      ~{if (tags_how) then "-tagshow" else ""} \
      ~{if (strict_tags) then "-stricttags" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    source_match: "string     [*] By default any feature source in the\\nfeature table is shown. You can set this to\\nmatch any feature source you wish to show.\\nThe source name is usually either the name\\nof the program that detected the feature or\\nit is the feature table (eg: EMBL) that the\\nfeature came from.\\nThe source may be wildcarded by using '*'.\\nIf you wish to show more than one source,\\nseparate their names with the character '|',\\neg:\\ngene* | embl (Any string)"
    type_match: "string     [*] By default any feature type in the\\nfeature table is shown. You can set this to\\nmatch any feature type you wish to show.\\nSee http://www.ebi.ac.uk/embl/WebFeat/ for a\\nlist of the EMBL feature types and see\\nAppendix A of the Swissprot user manual in\\nhttp://www.expasy.org/sprot/userman.html for\\na list of the Swissprot feature types.\\nThe type may be wildcarded by using '*'.\\nIf you wish to show more than one type,\\nseparate their names with the character '|',\\neg:\\n*UTR | intron (Any string)"
    tag_match: "string     [*] Tags are the types of extra values that\\na feature may have. For example in the EMBL\\nfeature table, a 'CDS' type of feature may\\nhave the tags '/codon', '/codon_start',\\n'/db_xref', '/EC_number', '/evidence',\\n'/exception', '/function', '/gene',\\n'/label', '/map', '/note', '/number',\\n'/partial', '/product', '/protein_id',\\n'/pseudo', '/standard_name', '/translation',\\n'/transl_except', '/transl_table', or\\n'/usedin'. Some of these tags also have\\nvalues, for example '/gene' can have the\\nvalue of the gene name.\\nBy default any feature tag in the feature\\ntable is shown. You can set this to match\\nany feature tag you wish to show.\\nThe tag may be wildcarded by using '*'.\\nIf you wish to show more than one tag,\\nseparate their names with the character '|',\\neg:\\ngene | label (Any string)"
    value_match: "string     [*] Tag values are the values associated\\nwith a feature tag. Tags are the types of\\nextra values that a feature may have. For\\nexample in the EMBL feature table, a 'CDS'\\ntype of feature may have the tags '/codon',\\n'/codon_start', '/db_xref', '/EC_number',\\n'/evidence', '/exception', '/function',\\n'/gene', '/label', '/map', '/note',\\n'/number', '/partial', '/product',\\n'/protein_id', '/pseudo', '/standard_name',\\n'/translation', '/transl_except',\\n'/transl_table', or '/usedin'. Only some of\\nthese tags can have values, for example\\n'/gene' can have the value of the gene name.\\nBy default any feature tag value in the\\nfeature table is shown. You can set this to\\nmatch any feature tag value you wish to\\nshow.\\nThe tag value may be wildcarded by using\\n'*'.\\nIf you wish to show more than one tag value,\\nseparate their names with the character\\n'|', eg:\\npax* | 10 (Any string)"
    sort: "menu       [start] Sort features by Type, Start or\\nSource, Nosort (don't sort - use input\\norder) or join coding regions together and\\nleave other features in the input order\\n(Values: source (Sort by Source); start\\n(Sort by Start position); type (Sort by\\nType); nosort (No sorting done))"
    join_features: "boolean    [N] Join coding regions together"
    annotation: "range      [If this is left blank, then no annotation\\nis added.] Regions to annotate by marking.\\nIf this is left blank, then no annotation is\\nadded.\\nA set of regions is specified by a set of\\npairs of positions followed by optional\\ntext.\\nThe positions are integers.\\nThey are followed by any text (but not\\ndigits when on the command-line).\\nExamples of region specifications are:\\n24-45 new domain 56-78 match to Mouse\\n1-100 First part 120-156 oligo\\nA file of ranges to annotate (one range per\\nline) can be specified as '@filename'."
    html: "boolean    [N] Use HTML formatting"
    width: "integer    [60] You can expand (or contract) the width\\nof the ASCII-character graphics display of\\nthe positions of the features using this\\nvalue.\\nFor example, a width of 80 characters would\\ncover a standard page width and a width a 10\\ncharacters would be nearly unreadable.\\nIf the width is set to less than 4, the\\ngraphics lines and the scale line will not\\nbe displayed. (Integer 0 or more)"
    collapse: "boolean    [N] If this is set, then features from the\\nsame source and of the same type and sense\\nare all printed on the same line. For\\ninstance if there are several features from\\nthe EMBL feature table (ie. the same source)\\nwhich are all of type 'exon' in the same\\nsense, then they will all be displayed on\\nthe same line. This makes it hard to\\ndistinguish overlapping features.\\nIf this is set to false then each feature is\\ndisplayed on a separate line making it\\neasier to distinguish where features start\\nand end."
    strand: "boolean    [N] Set this if you wish to display the\\nstrand of the features. Protein features are\\nalways directionless (indicated by '0'),\\nforward is indicated by '+' and reverse is\\n'-'."
    source_show: "boolean    [N] Set this if you wish to display the\\norigin of the features.\\nThe source name is usually either the name\\nof the program that detected the feature or\\nit is the name of the feature table (eg:\\nEMBL) that the feature came from."
    position: "boolean    [N] Set this if you wish to display the\\nstart and end position of the features. If\\nseveral features are being displayed on the\\nsame line, then the start and end positions\\nwill be joined by a comma, for example:\\n'189-189,225-225'."
    tags_how: "boolean    [N] Set this to be false if you do not wish\\nto display the tags and values of the\\nfeatures."
    strict_tags: "boolean    [N] By default if any tag/value pair in a\\nfeature matches the specified tag and value,\\nthen all the tags/value pairs of that\\nfeature will be displayed. If this is set to\\nbe true, then only those tag/value pairs in\\na feature that match the specified tag and\\nvalue will be displayed."
  }
  output {
    File out_stdout = stdout()
  }
}