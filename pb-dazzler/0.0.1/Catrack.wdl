version 1.0

task Catrack {
  input {
    Boolean? _verbose
    Boolean? delete_individual_blocks
    Boolean? force_overwrite_present
    Boolean? vfd
  }
  command <<<
    Catrack \
      ~{if (_verbose) then "-v" else ""} \
      ~{if (delete_individual_blocks) then "-d" else ""} \
      ~{if (force_overwrite_present) then "-f" else ""} \
      ~{if (vfd) then "-vfd" else ""}
  >>>
  parameter_meta {
    _verbose: ": verbose"
    delete_individual_blocks: ": delete individual blocks after a successful concatenation"
    force_overwrite_present: ": force overwrite of track if already present"
    vfd: ""
  }
  output {
    File out_stdout = stdout()
  }
}