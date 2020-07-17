version 1.0

task Profile {
  input {
    Boolean? filename_fasta_format
    Boolean? filename_strict_phylip
    Boolean? filename_relaxed_phylip
    Boolean? alignmenttype_dao_aaa
    Boolean? change_default_window
    Boolean? _verbose
    Boolean? change_scanning_size
    Boolean? step_size_profile
    String phi
  }
  command <<<
    Profile \
      ~{phi} \
      ~{true="-f" false="" filename_fasta_format} \
      ~{true="-s" false="" filename_strict_phylip} \
      ~{true="-r" false="" filename_relaxed_phylip} \
      ~{true="-t" false="" alignmenttype_dao_aaa} \
      ~{true="-w" false="" change_default_window} \
      ~{true="-v" false="" _verbose} \
      ~{true="-n" false="" change_scanning_size} \
      ~{true="-m" false="" step_size_profile}
  >>>
  parameter_meta {
    filename_fasta_format: ": Filename = FASTA format"
    filename_strict_phylip: ": Filename = Strict phylip file"
    filename_relaxed_phylip: ": Filename = Relaxed phylip file"
    alignmenttype_dao_aaa: ": AlignmentType = D|A|O where D=DNA A=AA and O=OTHER [default DNA]"
    change_default_window: ": # = Change default window size for PHI [default w = 100]"
    _verbose: ": Verbose [default = FALSE]"
    change_scanning_size: ": # = Change scanning size for regions to test [default n = 1000]"
    step_size_profile: ": # = Step size for profile method [default m = 25]"
    phi: ""
  }
}