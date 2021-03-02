version 1.0

task MetileneInputpl {
  input {
    Boolean? in_two
    Boolean? out
    Boolean? hone
    Boolean? h_two
    Boolean? pathexecutable_bedtools_executable
    Int? in_one
  }
  command <<<
    metilene_input_pl \
      ~{if (in_two) then "--in2" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (hone) then "--h1" else ""} \
      ~{if (h_two) then "--h2" else ""} \
      ~{if (pathexecutable_bedtools_executable) then "-b" else ""} \
      ~{if defined(in_one) then ("--in1 " +  '"' + in_one + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_two: "comma-seperated list of sorted (!) bedgraph input files of group 2"
    out: "path/file of out file (metilene input) (default: metilene_g1_g2.input, g1 set by -h1 option, g2 set by -h2 option)"
    hone: "identifier of group 1 (default: g1)"
    h_two: "identifier of group 2 (default: g2)"
    pathexecutable_bedtools_executable: "path/executable of bedtools executable (default: in PATH)"
    in_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}