version 1.0

task Repeatmatch {
  input {
    Boolean? use_exhaustive_search
    Boolean? forward_strand_only
    Boolean? set_minimum_exact
    Boolean? only_output_tandem
    Boolean? set_level_verbose
    File genome_file
  }
  command <<<
    repeat_match \
      ~{genome_file} \
      ~{if (use_exhaustive_search) then "-E" else ""} \
      ~{if (forward_strand_only) then "-f" else ""} \
      ~{if (set_minimum_exact) then "-n" else ""} \
      ~{if (only_output_tandem) then "-t" else ""} \
      ~{if (set_level_verbose) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_exhaustive_search: "Use exhaustive (slow) search to find matches"
    forward_strand_only: "Forward strand only, don't use reverse complement"
    set_minimum_exact: "#  Set minimum exact match length to #"
    only_output_tandem: "Only output tandem repeats"
    set_level_verbose: "#  Set level of verbose (debugging) printing to #"
    genome_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}