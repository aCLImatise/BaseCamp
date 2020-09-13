version 1.0

task Segwaywinner {
  input {
    Boolean? input_master
    Boolean? params
    Boolean? copy
    Boolean? clobber
  }
  command <<<
    segway_winner \
      ~{if (input_master) then "--input-master" else ""} \
      ~{if (params) then "--params" else ""} \
      ~{if (copy) then "--copy" else ""} \
      ~{if (clobber) then "--clobber" else ""}
  >>>
  parameter_meta {
    input_master: "print input master file name"
    params: "print parameters file name"
    copy: "copy files to final winning file locations"
    clobber: "overwrite existing files"
  }
  output {
    File out_stdout = stdout()
  }
}