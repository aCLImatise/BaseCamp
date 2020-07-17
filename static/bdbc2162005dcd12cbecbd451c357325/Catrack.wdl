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
      ~{true="-v" false="" _verbose} \
      ~{true="-d" false="" delete_individual_blocks} \
      ~{true="-f" false="" force_overwrite_present} \
      ~{true="-vfd" false="" vfd}
  >>>
  parameter_meta {
    _verbose: ": verbose"
    delete_individual_blocks: ": delete individual blocks after a successful concatenation"
    force_overwrite_present: ": force overwrite of track if already present"
    vfd: ""
  }
}