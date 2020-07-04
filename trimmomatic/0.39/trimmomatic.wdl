version 1.0

task Trimmomatic {
  input {
    Boolean? version
    String? threads
    String pe
  }
  command <<<
    trimmomatic \
      ~{pe} \
      ~{true="-version" false="" version} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    version: ""
    threads: ""
    pe: ""
  }
}