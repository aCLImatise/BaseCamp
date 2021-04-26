version 1.0

task BcbioVmpySaveconfig {
  input {
    String? datadir
    String bc_bio_v_mdot_py
  }
  command <<<
    bcbio_vm_py saveconfig \
      ~{bc_bio_v_mdot_py} \
      ~{if defined(datadir) then ("--datadir " +  '"' + datadir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    datadir: ""
    bc_bio_v_mdot_py: ""
  }
  output {
    File out_stdout = stdout()
  }
}