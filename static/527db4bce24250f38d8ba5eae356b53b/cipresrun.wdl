version 1.0

task Cipresrun {
  input {
    String? t
    Boolean? paramnameparamvalue_
    File? i
    String? y
    File? outnameoutpath_
    Directory? w
    Boolean? v
  }
  command <<<
    cipresrun \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (paramnameparamvalue_) then "-p" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if (outnameoutpath_) then "-o" else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: "\\"
    paramnameparamvalue_: "<paramname=paramvalue> [-p <paramname=paramvalue>] \\"
    i: "\\"
    y: "\\"
    outnameoutpath_: "<out.name=/out/path> [-o <out.name=/out/path>] \\"
    w: "\\"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outnameoutpath_ = "${in_outnameoutpath_}"
  }
}