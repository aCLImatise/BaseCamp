version 1.0

task BcbioVmpyArguments {
  input {
    String? datadir
    String bc_bio_v_mdot_py
  }
  command <<<
    bcbio_vm_py arguments \
      ~{bc_bio_v_mdot_py} \
      ~{if defined(datadir) then ("--datadir " +  '"' + datadir + '"') else ""}
  >>>
  parameter_meta {
    datadir: ""
    bc_bio_v_mdot_py: ""
  }
  output {
    File out_stdout = stdout()
  }
}