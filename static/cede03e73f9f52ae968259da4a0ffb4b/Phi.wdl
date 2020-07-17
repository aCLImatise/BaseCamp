version 1.0

task Phi {
  input {
    Boolean? filename_fasta_format
    Boolean? filename_strict_phylip
    Boolean? filename_relaxed_phylip
    Boolean? alignmenttype_dao_aaa
    Boolean? p
    Boolean? change_default_window
    Boolean? report_statistics_nss
    Boolean? _verbose
    Boolean? g
  }
  command <<<
    Phi \
      ~{true="-f" false="" filename_fasta_format} \
      ~{true="-s" false="" filename_strict_phylip} \
      ~{true="-r" false="" filename_relaxed_phylip} \
      ~{true="-t" false="" alignmenttype_dao_aaa} \
      ~{true="-p" false="" p} \
      ~{true="-w" false="" change_default_window} \
      ~{true="-o" false="" report_statistics_nss} \
      ~{true="-v" false="" _verbose} \
      ~{true="-g" false="" g}
  >>>
  parameter_meta {
    filename_fasta_format: ": Filename = FASTA format"
    filename_strict_phylip: ": Filename = Strict phylip file"
    filename_relaxed_phylip: ": Filename = Relaxed phylip file"
    alignmenttype_dao_aaa: ": AlignmentType = D|A|O where D=DNA A=AA and O=OTHER [default DNA]"
    p: ": [#] = PHI permutation test [default = FALSE, #=1000]"
    change_default_window: ": # = Change default window size [default w = 100]"
    report_statistics_nss: ": Report other statistics (NSS and Max Chi^2) [default = FALSE]"
    _verbose: ": Verbose [default = FALSE]"
    g: ": [i] = Print color (scaled) incompatibility matrix (graph.ppm) i - Image only (no ticks...) [default = FALSE]"
  }
}