version 1.0

task ScfUpdate {
  input {
    String? v
    String source
    String destination
  }
  command <<<
    scf_update \
      ~{source} \
      ~{destination} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    source: ""
    destination: ""
  }
}