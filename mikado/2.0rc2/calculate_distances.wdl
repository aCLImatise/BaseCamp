version 1.0

task CalculateDistances.py {
  input {
    String? o
    String? l
  }
  command <<<
    calculate_distances.py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    l: ""
  }
}