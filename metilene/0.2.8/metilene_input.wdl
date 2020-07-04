version 1.0

task MetileneInput.pl {
  input {
    Boolean? in_two
    Boolean? out
    Boolean? hone
    Boolean? h_two
    Boolean? pathexecutable_bedtools_executable
    String? in_one
  }
  command <<<
    metilene_input.pl \
      ~{true="--in2" false="" in_two} \
      ~{true="--out" false="" out} \
      ~{true="--h1" false="" hone} \
      ~{true="--h2" false="" h_two} \
      ~{true="-b" false="" pathexecutable_bedtools_executable} \
      ~{if defined(in_one) then ("--in1 " +  '"' + in_one + '"') else ""}
  >>>
  parameter_meta {
    in_two: "comma-seperated list of sorted (!) bedgraph input files of group 2"
    out: "path/file of out file (metilene input) (default: metilene_g1_g2.input, g1 set by -h1 option, g2 set by -h2 option)"
    hone: "identifier of group 1 (default: g1)"
    h_two: "identifier of group 2 (default: g2)"
    pathexecutable_bedtools_executable: "path/executable of bedtools executable (default: in PATH)"
    in_one: ""
  }
}