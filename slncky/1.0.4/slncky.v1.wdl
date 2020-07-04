version 1.0

task Slncky.v1.0 {
  input {
    Boolean? web
    String? config
    Boolean? no_orth_search
    Boolean? no_filter
    String bed_file
    String assembly
    String out_prefix
  }
  command <<<
    slncky.v1.0 \
      ~{bed_file} \
      ~{assembly} \
      ~{out_prefix} \
      ~{true="--web" false="" web} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--no_orth_search" false="" no_orth_search} \
      ~{true="--no_filter" false="" no_filter}
  >>>
  parameter_meta {
    web: "flag for if you want slncky to create a website visualizing results"
    config: ""
    no_orth_search: ""
    no_filter: ""
    bed_file: "bed12 file of transcripts"
    assembly: "assembly"
    out_prefix: "out_prefix"
  }
}