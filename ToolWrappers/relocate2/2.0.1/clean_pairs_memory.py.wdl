version 1.0

task CleanPairsMemorypy {
  input {
    String? f
    String? r
    Int? two
    Int? one
  }
  command <<<
    clean_pairs_memory_py \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    r: ""
    two: ""
    one: ""
  }
  output {
    File out_stdout = stdout()
  }
}