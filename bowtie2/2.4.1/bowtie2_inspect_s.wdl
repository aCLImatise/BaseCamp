version 1.0

task Bowtie2inspects {
  input {
    Int? a_slash_across
    Boolean? n_slash_names
    Boolean? s_slash_summary
    Boolean? v_slash_verbose
    Boolean? h_slash_help
    Int bowtie_two_inspect
  }
  command <<<
    bowtie2_inspect_s \
      ~{bowtie_two_inspect} \
      ~{if defined(a_slash_across) then ("-a/--across " +  '"' + a_slash_across + '"') else ""} \
      ~{if (n_slash_names) then "-n/--names" else ""} \
      ~{if (s_slash_summary) then "-s/--summary" else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    a_slash_across: "Number of characters across in FASTA output (default: 60)"
    n_slash_names: "Print reference sequence names only"
    s_slash_summary: "Print summary incl. ref names, lengths, index properties"
    v_slash_verbose: "Verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
    bowtie_two_inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}