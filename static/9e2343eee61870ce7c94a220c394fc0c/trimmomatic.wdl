version 1.0

task Trimmomatic {
  input {
    String? threads
    Boolean? version
    String pe
    String or
  }
  command <<<
    trimmomatic \
      ~{pe} \
      ~{or} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: ""
    version: ""
    pe: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}