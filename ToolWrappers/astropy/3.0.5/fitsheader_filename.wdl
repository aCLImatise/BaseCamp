version 1.0

task FitsheaderFilename {
  input {
    Boolean? c
    Boolean? t
    String? k
    String? e
    String fits_header
    String? format
  }
  command <<<
    fitsheader filename \
      ~{fits_header} \
      ~{format} \
      ~{if (c) then "-c" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    c: ""
    t: ""
    k: ""
    e: ""
    fits_header: ""
    format: ""
  }
  output {
    File out_stdout = stdout()
  }
}