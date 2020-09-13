version 1.0

task Profile {
  input {
    Boolean? filename_fasta_format
    Boolean? filename_strict_file
    Boolean? filename_relaxed_file
    Boolean? alignmenttype_dao_ddnaaaa
    Boolean? change_default_window
    Boolean? _verbose
    Boolean? change_scanning_size
    Boolean? step_size_profile
    String phi
  }
  command <<<
    Profile \
      ~{phi} \
      ~{if (filename_fasta_format) then "-f" else ""} \
      ~{if (filename_strict_file) then "-s" else ""} \
      ~{if (filename_relaxed_file) then "-r" else ""} \
      ~{if (alignmenttype_dao_ddnaaaa) then "-t" else ""} \
      ~{if (change_default_window) then "-w" else ""} \
      ~{if (_verbose) then "-v" else ""} \
      ~{if (change_scanning_size) then "-n" else ""} \
      ~{if (step_size_profile) then "-m" else ""}
  >>>
  parameter_meta {
    filename_fasta_format: ": Filename = FASTA format"
    filename_strict_file: ": Filename = Strict phylip file"
    filename_relaxed_file: ": Filename = Relaxed phylip file"
    alignmenttype_dao_ddnaaaa: ": AlignmentType = D|A|O where D=DNA\\nA=AA and O=OTHER [default DNA]"
    change_default_window: ": # = Change default window size for PHI [default w = 100]"
    _verbose: ": Verbose [default = FALSE]"
    change_scanning_size: ": # = Change scanning size for regions to test [default n = 1000]"
    step_size_profile: ": # = Step size for profile method [default m = 25]"
    phi: ""
  }
  output {
    File out_stdout = stdout()
  }
}