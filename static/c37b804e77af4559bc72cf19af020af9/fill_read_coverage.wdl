version 1.0

task FillReadCoverage {
  input {
    Boolean? depot
  }
  command <<<
    fill_read_coverage \
      ~{if (depot) then "--depot" else ""}
  >>>
  parameter_meta {
    depot: "depot path (string)"
  }
  output {
    File out_stdout = stdout()
  }
}