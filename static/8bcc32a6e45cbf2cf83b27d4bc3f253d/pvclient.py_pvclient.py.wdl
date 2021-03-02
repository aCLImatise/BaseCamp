version 1.0

task PvclientpyPvclientpy {
  input {
    String? ct
    String? structures
    String pv_client_do_tpy
  }
  command <<<
    pvclient_py pvclient_py \
      ~{pv_client_do_tpy} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(structures) then ("--structures " +  '"' + structures + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ct: "Connect-table secondary structure."
    structures: "Chemical-probing data."
    pv_client_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}