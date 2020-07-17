version 1.0

task CleanPairsMemory.py {
  input {
    String? one
    String? two
    String? r
    String? f
  }
  command <<<
    clean_pairs_memory.py \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    one: ""
    two: ""
    r: ""
    f: ""
  }
}