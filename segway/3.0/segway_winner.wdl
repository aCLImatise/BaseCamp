version 1.0

task SegwayWinner {
  input {
    Boolean? input_master
    Boolean? params
    Boolean? copy
    Boolean? clobber
    String? option
  }
  command <<<
    segway-winner \
      ~{option} \
      ~{true="--input-master" false="" input_master} \
      ~{true="--params" false="" params} \
      ~{true="--copy" false="" copy} \
      ~{true="--clobber" false="" clobber}
  >>>
  parameter_meta {
    input_master: "print input master file name"
    params: "print parameters file name"
    copy: "copy files to final winning file locations"
    clobber: "overwrite existing files"
    option: ""
  }
}