version 1.0

task Phi {
  input {
    Boolean? filename_fasta_format
    Boolean? filename_strict_phylip
    Boolean? filename_relaxed_phylip
    Boolean? alignmenttype_dao_where
    Boolean? p
    Boolean? change_default_window
    Boolean? report_other_statistics
    Boolean? _verbose
    Boolean? print_color_scaled
  }
  command <<<
    Phi \
      ~{if (filename_fasta_format) then "-f" else ""} \
      ~{if (filename_strict_phylip) then "-s" else ""} \
      ~{if (filename_relaxed_phylip) then "-r" else ""} \
      ~{if (alignmenttype_dao_where) then "-t" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (change_default_window) then "-w" else ""} \
      ~{if (report_other_statistics) then "-o" else ""} \
      ~{if (_verbose) then "-v" else ""} \
      ~{if (print_color_scaled) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_fasta_format: ": Filename = FASTA format"
    filename_strict_phylip: ": Filename = Strict phylip file"
    filename_relaxed_phylip: ": Filename = Relaxed phylip file"
    alignmenttype_dao_where: ": AlignmentType = D|A|O where D=DNA\\nA=AA and O=OTHER [default DNA]"
    p: ": [#] = PHI permutation test [default = FALSE, #=1000]"
    change_default_window: ": # = Change default window size [default w = 100]"
    report_other_statistics: ": Report other statistics (NSS and Max Chi^2) [default = FALSE]"
    _verbose: ": Verbose [default = FALSE]"
    print_color_scaled: ": [i] = Print color (scaled) incompatibility matrix (graph.ppm)\\ni - Image only (no ticks...) [default = FALSE]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}