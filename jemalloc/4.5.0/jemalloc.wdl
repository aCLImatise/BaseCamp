version 1.0

task Jemalloc.sh {
  input {
    String not
    String found
  }
  command <<<
    jemalloc.sh \
      ~{not} \
      ~{found}
  >>>
  parameter_meta {
    not: ""
    found: ""
  }
}