version 1.0

task PvclientpyPvclientpy {
  input {
    String? out
    String? structures
    String? ct
    String pv_client_do_tpy
  }
  command <<<
    pvclient_py pvclient_py \
      ~{pv_client_do_tpy} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(structures) then ("--structures " +  '"' + structures + '"') else ""} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""}
  >>>
  parameter_meta {
    out: ""
    structures: ""
    ct: ""
    pv_client_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}