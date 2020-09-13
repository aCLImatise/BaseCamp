version 1.0

task Trimmomatic {
  input {
    Boolean? version
    String? threads
    String pe
    String or
  }
  command <<<
    trimmomatic \
      ~{pe} \
      ~{or} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    version: ""
    threads: ""
    pe: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}