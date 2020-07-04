version 1.0

task RascafJoin {
  input {
    String? path_rascaf_output
    String? prefix_output_file
    Int? ms
    Boolean? ignore_gap
    String ras_caf_join
  }
  command <<<
    rascaf-join \
      ~{ras_caf_join} \
      ~{if defined(path_rascaf_output) then ("-r " +  '"' + path_rascaf_output + '"') else ""} \
      ~{if defined(prefix_output_file) then ("-o " +  '"' + prefix_output_file + '"') else ""} \
      ~{if defined(ms) then ("-ms " +  '"' + ms + '"') else ""} \
      ~{true="-ignoreGap" false="" ignore_gap}
  >>>
  parameter_meta {
    path_rascaf_output: ": the path to the rascaf output. Can use multiple of -r. (required)"
    prefix_output_file: ": the prefix of the output file. (default: rascaf_scaffold)"
    ms: ": minimum support alignments for the connection (default: 2)"
    ignore_gap: ": ignore the gap size, which do not consider the number of Ns between contigs (default: not used)"
    ras_caf_join: ""
  }
}