version 1.0

task RepeatMatch {
  input {
    Boolean? use_exhaustive_search
    Boolean? forward_strand_only
    Boolean? set_minimum_length
    Boolean? only_output_tandem
    Boolean? set_level_verbose
    String genome_file
  }
  command <<<
    repeat-match \
      ~{genome_file} \
      ~{true="-E" false="" use_exhaustive_search} \
      ~{true="-f" false="" forward_strand_only} \
      ~{true="-n" false="" set_minimum_length} \
      ~{true="-t" false="" only_output_tandem} \
      ~{true="-V" false="" set_level_verbose}
  >>>
  parameter_meta {
    use_exhaustive_search: "Use exhaustive (slow) search to find matches"
    forward_strand_only: "Forward strand only, don't use reverse complement"
    set_minimum_length: "#  Set minimum exact match length to #"
    only_output_tandem: "Only output tandem repeats"
    set_level_verbose: "#  Set level of verbose (debugging) printing to #"
    genome_file: ""
  }
}