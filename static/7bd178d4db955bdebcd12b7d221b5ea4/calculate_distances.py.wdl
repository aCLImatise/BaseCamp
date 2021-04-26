version 1.0

task CalculateDistancespy {
  input {
    String? l
    String? o
  }
  command <<<
    calculate_distances_py \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0"
  }
  parameter_meta {
    l: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}