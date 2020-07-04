version 1.0

task Segemehl.x {
  input {
    Boolean? be_svoc_f
    File? d
    File? q
    File? file
  }
  command <<<
    segemehl.x \
      ~{file} \
      ~{true="-besVOcf" false="" be_svoc_f} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    be_svoc_f: ""
    d: ""
    q: ""
    file: ""
  }
}