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
    twofeat \
      ~{true="-atype" false="" a_type} \
      ~{true="-btype" false="" b_type} \
      ~{true="-minrange" false="" min_range} \
      ~{true="-maxrange" false="" max_range} \
      ~{true="-asource" false="" a_source} \
      ~{true="-asense" false="" a_sense} \
      ~{true="-aminscore" false="" am_in_score} \
      ~{true="-amaxscore" false="" a_max_score} \
      ~{true="-atag" false="" a_tag} \
      ~{true="-avalue" false="" a_value} \
      ~{true="-bsource" false="" b_source} \
      ~{true="-bsense" false="" b_sense} \
      ~{true="-bminscore" false="" bm_in_score} \
      ~{true="-bmaxscore" false="" bmax_score} \
      ~{true="-btag" false="" b_tag} \
      ~{true="-bvalue" false="" b_value} \
      ~{true="-overlap" false="" overlap} \
      ~{true="-rangetype" false="" range_type} \
      ~{true="-sense" false="" sense} \
      ~{true="-order" false="" order} \
      ~{true="-twoout" false="" two_out}
  >>>
  parameter_meta {
    a_type: "string     [*] By default every feature in the feature table is allowed. You can set this to be any feature type you wish to allow. See http://www.ebi.ac.uk/embl/WebFeat/ for a list of the EMBL feature types and see Appendix A of the Swissprot user manual in http://www.expasy.org/sprot/userman.html for a list of the Swissprot feature types. The type may be wildcarded by using '*'. If you wish to allow more than one type, separate their names with the character '|', eg: *UTR | intron (Any string)"
    b_type: "string     [*] By default every feature in the feature table is allowed. You can set this to be any feature type you wish to allow. See http://www.ebi.ac.uk/embl/WebFeat/ for a list of the EMBL feature types and see Appendix A of the Swissprot user manual in http://www.expasy.org/sprot/userman.html for a list of the Swissprot feature types. The type may be wildcarded by using '*'. If you wish to allow more than one type, separate their names with the character '|', eg: *UTR | intron (Any string)"
    min_range: "integer    [0] If this is greater or equal to 'maxrange', then no min or max range is specified (Any integer value)"
    max_range: "integer    [0] If this is less than or equal to 'minrange', then no min or max range is specified (Any integer value)"
    a_source: "string     [*] By default any feature source in the feature table is allowed. You can set this to match any feature source you wish to allow. The source name is usually either the name of the program that detected the feature or it is the feature table (eg: EMBL) that the feature came from. The source may be wildcarded by using '*'. If you wish to allow more than one source, separate their names with the character '|', eg: gene* | embl (Any string)"
    a_sense: "menu       [0] By default any feature sense is allowed. You can set this to match the required sense. (Values: 0 (Any sense); + (Forward sense); - (Reverse sense))"
    am_in_score: "float      [0.0] If this is greater than or equal to the maximum score, then any score is allowed. (Any numeric value)"
    a_max_score: "float      [0.0] If this is less than or equal to the maximum score, then any score is permitted. (Any numeric value)"
    a_tag: "string     [*] Tags are the types of extra values that a feature may have. For example in the EMBL feature table, a 'CDS' type of feature may have the tags '/codon', '/codon_start', '/db_xref', '/EC_number', '/evidence', '/exception', '/function', '/gene', '/label', '/map', '/note', '/number', '/partial', '/product', '/protein_id', '/pseudo', '/standard_name', '/translation', '/transl_except', '/transl_table', or '/usedin'. Some of these tags also have values, for example '/gene' can have the value of the gene name. By default any feature tag in the feature table is allowed. You can set this to match any feature tag you wish to allow. The tag may be wildcarded by using '*'. If you wish to allow more than one tag, separate their names with the character '|', eg: gene | label (Any string)"
    a_value: "string     [*] Tag values are the values associated with a feature tag. Tags are the types of extra values that a feature may have. For example in the EMBL feature table, a 'CDS' type of feature may have the tags '/codon', '/codon_start', '/db_xref', '/EC_number', '/evidence', '/exception', '/function', '/gene', '/label', '/map', '/note', '/number', '/partial', '/product', '/protein_id', '/pseudo', '/standard_name', '/translation', '/transl_except', '/transl_table', or '/usedin'. Only some of these tags can have values, for example '/gene' can have the value of the gene name. By default any feature tag value in the feature table is allowed. You can set this to match any feature tag value you wish to allow. The tag value may be wildcarded by using '*'. If you wish to allow more than one tag value, separate their names with the character '|', eg: pax* | 10 (Any string)"
    b_source: "string     [*] By default any feature source in the feature table is allowed. You can set this to match any feature source you wish to allow. The source name is usually either the name of the program that detected the feature or it is the feature table (eg: EMBL) that the feature came from. The source may be wildcarded by using '*'. If you wish to allow more than one source, separate their names with the character '|', eg: gene* | embl (Any string)"
    b_sense: "menu       [0] By default any feature sense is allowed. You can set this to match the required sense. (Values: 0 (Any sense); + (Forward sense); - (Reverse sense))"
    bm_in_score: "float      [0.0] If this is greater than or equal to the maximum score, then any score is allowed. (Any numeric value)"
    bmax_score: "float      [0.0] If this is less than or equal to the maximum score, then any score is permitted. (Any numeric value)"
    b_tag: "string     [*] Tags are the types of extra values that a feature may have. For example in the EMBL feature table, a 'CDS' type of feature may have the tags '/codon', '/codon_start', '/db_xref', '/EC_number', '/evidence', '/exception', '/function', '/gene', '/label', '/map', '/note', '/number', '/partial', '/product', '/protein_id', '/pseudo', '/standard_name', '/translation', '/transl_except', '/transl_table', or '/usedin'. Some of these tags also have values, for example '/gene' can have the value of the gene name. By default any feature tag in the feature table is allowed. You can set this to match any feature tag you wish to allow. The tag may be wildcarded by using '*'. If you wish to allow more than one tag, separate their names with the character '|', eg: gene | label (Any string)"
    b_value: "string     [*] Tag values are the values associated with a feature tag. Tags are the types of extra values that a feature may have. For example in the EMBL feature table, a 'CDS' type of feature may have the tags '/codon', '/codon_start', '/db_xref', '/EC_number', '/evidence', '/exception', '/function', '/gene', '/label', '/map', '/note', '/number', '/partial', '/product', '/protein_id', '/pseudo', '/standard_name', '/translation', '/transl_except', '/transl_table', or '/usedin'. Only some of these tags can have values, for example '/gene' can have the value of the gene name. By default any feature tag value in the feature table is allowed. You can set this to match any feature tag value you wish to allow. The tag value may be wildcarded by using '*'. If you wish to allow more than one tag value, separate their names with the character '|', eg: pax* | 10 (Any string)"
    overlap: "menu       [A] This allows you to specify the allowed overlaps of the features A and B. You can allow any or no overlaps, specify that they must or must not overlap, that one must or must not be wholly enclosed within another feature. (Values: A (Any); O (Overlap required); NO (No overlaps are allowed); NW (Overlap required but not within); AW (A must be all within B); BW (B must be all within A))"
    range_type: "menu       [N] This allows you to specify the positions from which the allowed minimum or maximum distance between the features is measured (Values: N (From nearest ends); L (From left ends); R (From right ends); F (From furthest ends))"
    sense: "menu       [A] This allows you to specify the required sense that the two features must be on. This is ignored (always 'Any') when looking at protein sequence features. (Values: A (Any sense); S (Same sense); O (Opposite sense))"
    order: "menu       [A] This allows you to specify the required order of the two features. The order is measured from the start positions of the features. This criterion is always applied despite the specified overlap type required. (Values: A (Any); AB (Feature A then feature B); BA (Feature B then feature A))"
    two_out: "toggle     [N] If you set this to be true, then the two features themselves will be written out. If it is left as false, then a single feature will be written out covering the two features you found."
  }
}