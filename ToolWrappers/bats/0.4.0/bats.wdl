version 1.0

task Bats {
  input {
    Boolean? count
    Boolean? pretty
    Boolean? tap
  }
  command <<<
    bats \
      ~{if (count) then "--count" else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if (tap) then "--tap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    count: "Count the number of test cases without running any tests"
    pretty: "Show results in pretty format (default for terminals)"
    tap: "Show results in TAP format"
  }
  output {
    File out_stdout = stdout()
  }
}