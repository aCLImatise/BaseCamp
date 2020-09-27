version 1.0

task Cipresrun {
  input {
    Boolean? paramnameparamvalue_
    File? outnameoutpath_
    Boolean? v
    Directory? w
    String? y
    File? i
    String? t
  }
  command <<<
    cipresrun \
      ~{if (paramnameparamvalue_) then "-p" else ""} \
      ~{if (outnameoutpath_) then "-o" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    paramnameparamvalue_: "<paramname=paramvalue> [-p <paramname=paramvalue>] \\"
    outnameoutpath_: "<out.name=/out/path> [-o <out.name=/out/path>] \\"
    v: ""
    w: ""
    y: ""
    i: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
    File out_outnameoutpath_ = "${in_outnameoutpath_}"
  }
}