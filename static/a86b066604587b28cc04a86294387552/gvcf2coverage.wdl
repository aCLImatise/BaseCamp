version 1.0

task Gvcf2coverage {
  input {
    Boolean? n
    String? d
    String? t
  }
  command <<<
    gvcf2coverage \
      ~{if (n) then "-n" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n: ""
    d: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}