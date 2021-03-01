version 1.0

task Twofeat {
  input {
    Boolean? a_type
    Boolean? b_type
    Boolean? min_range
    Boolean? max_range
    Boolean? a_source
    Boolean? a_sense
    Boolean? am_in_score
    Boolean? a_max_score
    Boolean? a_tag
    Boolean? a_value
    Boolean? b_source
    Boolean? b_sense
    Boolean? bm_in_score
    Boolean? bmax_score
    Boolean? b_tag
    Boolean? b_value
    Boolean? overlap
    Boolean? range_type
    Boolean? sense
    Boolean? order
    Boolean? two_out
  }
  command <<<
    _twofeat \
      ~{if (a_type) then "-atype" else ""} \
      ~{if (b_type) then "-btype" else ""} \
      ~{if (min_range) then "-minrange" else ""} \
      ~{if (max_range) then "-maxrange" else ""} \
      ~{if (a_source) then "-asource" else ""} \
      ~{if (a_sense) then "-asense" else ""} \
      ~{if (am_in_score) then "-aminscore" else ""} \
      ~{if (a_max_score) then "-amaxscore" else ""} \
      ~{if (a_tag) then "-atag" else ""} \
      ~{if (a_value) then "-avalue" else ""} \
      ~{if (b_source) then "-bsource" else ""} \
      ~{if (b_sense) then "-bsense" else ""} \
      ~{if (bm_in_score) then "-bminscore" else ""} \
      ~{if (bmax_score) then "-bmaxscore" else ""} \
      ~{if (b_tag) then "-btag" else ""} \
      ~{if (b_value) then "-bvalue" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if (range_type) then "-rangetype" else ""} \
      ~{if (sense) then "-sense" else ""} \
      ~{if (order) then "-order" else ""} \
      ~{if (two_out) then "-twoout" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_type: "string     [*] By default every feature in the feature\\ntable is allowed. You can set this to be any\\nfeature type you wish to allow.\\nSee http://www.ebi.ac.uk/embl/WebFeat/ for a\\nlist of the EMBL feature types and see\\nAppendix A of the Swissprot user manual in\\nhttp://www.expasy.org/sprot/userman.html for\\na list of the Swissprot feature types.\\nThe type may be wildcarded by using '*'.\\nIf you wish to allow more than one type,\\nseparate their names with the character '|',\\neg:\\n*UTR | intron (Any string)"
    b_type: "string     [*] By default every feature in the feature\\ntable is allowed. You can set this to be any\\nfeature type you wish to allow.\\nSee http://www.ebi.ac.uk/embl/WebFeat/ for a\\nlist of the EMBL feature types and see\\nAppendix A of the Swissprot user manual in\\nhttp://www.expasy.org/sprot/userman.html for\\na list of the Swissprot feature types.\\nThe type may be wildcarded by using '*'.\\nIf you wish to allow more than one type,\\nseparate their names with the character '|',\\neg:\\n*UTR | intron (Any string)"
    min_range: "integer    [0] If this is greater or equal to\\n'maxrange', then no min or max range is\\nspecified (Any integer value)"
    max_range: "integer    [0] If this is less than or equal to\\n'minrange', then no min or max range is\\nspecified (Any integer value)"
    a_source: "string     [*] By default any feature source in the\\nfeature table is allowed. You can set this\\nto match any feature source you wish to\\nallow.\\nThe source name is usually either the name\\nof the program that detected the feature or\\nit is the feature table (eg: EMBL) that the\\nfeature came from.\\nThe source may be wildcarded by using '*'.\\nIf you wish to allow more than one source,\\nseparate their names with the character '|',\\neg:\\ngene* | embl (Any string)"
    a_sense: "menu       [0] By default any feature sense is allowed.\\nYou can set this to match the required\\nsense. (Values: 0 (Any sense); + (Forward\\nsense); - (Reverse sense))"
    am_in_score: "float      [0.0] If this is greater than or equal to\\nthe maximum score, then any score is\\nallowed. (Any numeric value)"
    a_max_score: "float      [0.0] If this is less than or equal to the\\nmaximum score, then any score is permitted.\\n(Any numeric value)"
    a_tag: "string     [*] Tags are the types of extra values that\\na feature may have. For example in the EMBL\\nfeature table, a 'CDS' type of feature may\\nhave the tags '/codon', '/codon_start',\\n'/db_xref', '/EC_number', '/evidence',\\n'/exception', '/function', '/gene',\\n'/label', '/map', '/note', '/number',\\n'/partial', '/product', '/protein_id',\\n'/pseudo', '/standard_name', '/translation',\\n'/transl_except', '/transl_table', or\\n'/usedin'. Some of these tags also have\\nvalues, for example '/gene' can have the\\nvalue of the gene name.\\nBy default any feature tag in the feature\\ntable is allowed. You can set this to match\\nany feature tag you wish to allow.\\nThe tag may be wildcarded by using '*'.\\nIf you wish to allow more than one tag,\\nseparate their names with the character '|',\\neg:\\ngene | label (Any string)"
    a_value: "string     [*] Tag values are the values associated\\nwith a feature tag. Tags are the types of\\nextra values that a feature may have. For\\nexample in the EMBL feature table, a 'CDS'\\ntype of feature may have the tags '/codon',\\n'/codon_start', '/db_xref', '/EC_number',\\n'/evidence', '/exception', '/function',\\n'/gene', '/label', '/map', '/note',\\n'/number', '/partial', '/product',\\n'/protein_id', '/pseudo', '/standard_name',\\n'/translation', '/transl_except',\\n'/transl_table', or '/usedin'. Only some of\\nthese tags can have values, for example\\n'/gene' can have the value of the gene name.\\nBy default any feature tag value in the\\nfeature table is allowed. You can set this\\nto match any feature tag value you wish to\\nallow.\\nThe tag value may be wildcarded by using\\n'*'.\\nIf you wish to allow more than one tag\\nvalue, separate their names with the\\ncharacter '|', eg:\\npax* | 10 (Any string)"
    b_source: "string     [*] By default any feature source in the\\nfeature table is allowed. You can set this\\nto match any feature source you wish to\\nallow.\\nThe source name is usually either the name\\nof the program that detected the feature or\\nit is the feature table (eg: EMBL) that the\\nfeature came from.\\nThe source may be wildcarded by using '*'.\\nIf you wish to allow more than one source,\\nseparate their names with the character '|',\\neg:\\ngene* | embl (Any string)"
    b_sense: "menu       [0] By default any feature sense is allowed.\\nYou can set this to match the required\\nsense. (Values: 0 (Any sense); + (Forward\\nsense); - (Reverse sense))"
    bm_in_score: "float      [0.0] If this is greater than or equal to\\nthe maximum score, then any score is\\nallowed. (Any numeric value)"
    bmax_score: "float      [0.0] If this is less than or equal to the\\nmaximum score, then any score is permitted.\\n(Any numeric value)"
    b_tag: "string     [*] Tags are the types of extra values that\\na feature may have. For example in the EMBL\\nfeature table, a 'CDS' type of feature may\\nhave the tags '/codon', '/codon_start',\\n'/db_xref', '/EC_number', '/evidence',\\n'/exception', '/function', '/gene',\\n'/label', '/map', '/note', '/number',\\n'/partial', '/product', '/protein_id',\\n'/pseudo', '/standard_name', '/translation',\\n'/transl_except', '/transl_table', or\\n'/usedin'. Some of these tags also have\\nvalues, for example '/gene' can have the\\nvalue of the gene name.\\nBy default any feature tag in the feature\\ntable is allowed. You can set this to match\\nany feature tag you wish to allow.\\nThe tag may be wildcarded by using '*'.\\nIf you wish to allow more than one tag,\\nseparate their names with the character '|',\\neg:\\ngene | label (Any string)"
    b_value: "string     [*] Tag values are the values associated\\nwith a feature tag. Tags are the types of\\nextra values that a feature may have. For\\nexample in the EMBL feature table, a 'CDS'\\ntype of feature may have the tags '/codon',\\n'/codon_start', '/db_xref', '/EC_number',\\n'/evidence', '/exception', '/function',\\n'/gene', '/label', '/map', '/note',\\n'/number', '/partial', '/product',\\n'/protein_id', '/pseudo', '/standard_name',\\n'/translation', '/transl_except',\\n'/transl_table', or '/usedin'. Only some of\\nthese tags can have values, for example\\n'/gene' can have the value of the gene name.\\nBy default any feature tag value in the\\nfeature table is allowed. You can set this\\nto match any feature tag value you wish to\\nallow.\\nThe tag value may be wildcarded by using\\n'*'.\\nIf you wish to allow more than one tag\\nvalue, separate their names with the\\ncharacter '|', eg:\\npax* | 10 (Any string)"
    overlap: "menu       [A] This allows you to specify the allowed\\noverlaps of the features A and B.\\nYou can allow any or no overlaps, specify\\nthat they must or must not overlap, that one\\nmust or must not be wholly enclosed within\\nanother feature. (Values: A (Any); O\\n(Overlap required); NO (No overlaps are\\nallowed); NW (Overlap required but not\\nwithin); AW (A must be all within B); BW (B\\nmust be all within A))"
    range_type: "menu       [N] This allows you to specify the positions\\nfrom which the allowed minimum or maximum\\ndistance between the features is measured\\n(Values: N (From nearest ends); L (From left\\nends); R (From right ends); F (From\\nfurthest ends))"
    sense: "menu       [A] This allows you to specify the required\\nsense that the two features must be on. This\\nis ignored (always 'Any') when looking at\\nprotein sequence features. (Values: A (Any\\nsense); S (Same sense); O (Opposite sense))"
    order: "menu       [A] This allows you to specify the required\\norder of the two features. The order is\\nmeasured from the start positions of the\\nfeatures. This criterion is always applied\\ndespite the specified overlap type required.\\n(Values: A (Any); AB (Feature A then\\nfeature B); BA (Feature B then feature A))"
    two_out: "toggle     [N] If you set this to be true, then the two\\nfeatures themselves will be written out. If\\nit is left as false, then a single feature\\nwill be written out covering the two\\nfeatures you found."
  }
  output {
    File out_stdout = stdout()
  }
}