version 1.0

task FormatInputpy {
  input {
    String? output_table
    String? set_features_rows
    Boolean? set_use_subclass
    Float? set_normalization_value
    Boolean? set_use_subject
    String? set_policy_adopt
    Int? set_minimum_cardinality
    String? biom_c
    String? biom_s
    String input_file
    String output_file
    String columns
  }
  command <<<
    format_input_py \
      ~{input_file} \
      ~{output_file} \
      ~{columns} \
      ~{if defined(output_table) then ("--output_table " +  '"' + output_table + '"') else ""} \
      ~{if defined(set_features_rows) then ("-f " +  '"' + set_features_rows + '"') else ""} \
      ~{if (set_use_subclass) then "-s" else ""} \
      ~{if defined(set_normalization_value) then ("-o " +  '"' + set_normalization_value + '"') else ""} \
      ~{if (set_use_subject) then "-u" else ""} \
      ~{if defined(set_policy_adopt) then ("-m " +  '"' + set_policy_adopt + '"') else ""} \
      ~{if defined(set_minimum_cardinality) then ("-n " +  '"' + set_minimum_cardinality + '"') else ""} \
      ~{if defined(biom_c) then ("-biom_c " +  '"' + biom_c + '"') else ""} \
      ~{if defined(biom_s) then ("-biom_s " +  '"' + biom_s + '"') else ""}
  >>>
  parameter_meta {
    output_table: "the formatted table in txt format"
    set_features_rows: "set whether the features are on rows (default) or on"
    set_use_subclass: "[1..n_feats]       set which feature use as subclass (default -1 meaning\\nno subclass)"
    set_normalization_value: "set the normalization value (default -1.0 meaning no\\nnormalization)"
    set_use_subject: "[1..n_feats]       set which feature use as subject (default -1 meaning\\nno subject)"
    set_policy_adopt: "set the policy to adopt with missin values: f removes\\nthe features with missing values, s removes samples\\nwith missing values (default f)"
    set_minimum_cardinality: "set the minimum cardinality of each subclass\\n(subclasses with low cardinalities will be grouped\\ntogether, if the cardinality is still low, no pairwise\\ncomparison will be performed with them)"
    biom_c: "For biom input files: Set which feature use as class"
    biom_s: "For biom input files: set which feature use as\\nsubclass\\n"
    input_file: "the input file, feature hierarchical level can be\\nspecified with | or . and those symbols must not be\\npresent for other reasons in the input file."
    output_file: "the output file containing the data for LEfSe"
    columns: "-c [1..n_feats]       set which feature use as class (default 1)"
  }
  output {
    File out_stdout = stdout()
  }
}