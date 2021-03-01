version 1.0

task MarkRepeats {
  input {
    Boolean? no_coverage_repeats
    Boolean? no_path_repeats
    Boolean? redundancy
    Boolean? agressive
    Boolean? b
    String? an_k
    String bank_name
  }
  command <<<
    MarkRepeats \
      ~{an_k} \
      ~{bank_name} \
      ~{if (no_coverage_repeats) then "-noCoverageRepeats" else ""} \
      ~{if (no_path_repeats) then "-noPathRepeats" else ""} \
      ~{if (redundancy) then "-redundancy" else ""} \
      ~{if (agressive) then "-agressive" else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_coverage_repeats: ""
    no_path_repeats: ""
    redundancy: ""
    agressive: ""
    b: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}