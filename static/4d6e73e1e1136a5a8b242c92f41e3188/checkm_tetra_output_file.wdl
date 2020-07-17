version 1.0

task CheckmTetraOutputFile {
  input {
    String? t
    Boolean? q
    String check_m
    String tetra
    String seq_file
    String output_file
  }
  command <<<
    checkm tetra output_file \
      ~{check_m} \
      ~{tetra} \
      ~{seq_file} \
      ~{output_file} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    t: ""
    q: ""
    check_m: ""
    tetra: ""
    seq_file: ""
    output_file: ""
  }
}