version 1.0

task Quickmerge {
  input {
    String? d
    String? q
    String? r
    Boolean? hco
  }
  command <<<
    quickmerge \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{true="-hco" false="" hco}
  >>>
  parameter_meta {
    d: ""
    q: ""
    r: ""
    hco: ""
  }
}