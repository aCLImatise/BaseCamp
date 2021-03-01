version 1.0

task BcbioVmpyCwlrunDirectory {
  input {
    Boolean? no_container
    String bc_bio_v_mdot_py
    String cwl_run
  }
  command <<<
    bcbio_vm_py cwlrun directory \
      ~{bc_bio_v_mdot_py} \
      ~{cwl_run} \
      ~{if (no_container) then "--no-container" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_container: ""
    bc_bio_v_mdot_py: ""
    cwl_run: ""
  }
  output {
    File out_stdout = stdout()
  }
}