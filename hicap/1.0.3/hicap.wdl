version 1.0

task Hicap {
  input {
    String? query_fp
    String? output_dir
    Boolean? help_all
    Boolean? v
  }
  command <<<
    hicap \
      ~{if defined(query_fp) then ("--query_fp " +  '"' + query_fp + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--help_all" false="" help_all} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    query_fp: "Input FASTA query"
    output_dir: "Output directory"
    help_all: "Display extended help"
    v: ""
  }
}