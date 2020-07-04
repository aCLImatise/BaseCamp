version 1.0

task BedtoolsSplit {
  input {
    String? i
    String? n
  }
  command <<<
    bedtools split \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    n: ""
  }
}