version 1.0

task GustafMateJoining {
  input {
    Boolean? version_check
    File? out_path
    Boolean? rev_compl
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
  }
  command <<<
    gustaf_mate_joining \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(out_path) then ("--outPath " +  '"' + out_path + '"') else ""} \
      ~{if (rev_compl) then "--revcompl" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    out_path: "of OUTPUT_FILE's\\nSet name of output FASTA/FASTQ file(s). Valid filetypes are: .fq,\\n.fastq, .fasta, and .fa. Default: joined_mates.fa."
    rev_compl: "Disable reverse complementing second input file."
    quiet: "Set verbosity to a minimum."
    verbose: "Enable verbose output."
    very_verbose: "Enable very verbose output."
  }
  output {
    File out_stdout = stdout()
    File out_out_path = "${in_out_path}"
  }
}