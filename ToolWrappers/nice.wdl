version 1.0

task Nice {
  input {
    Boolean? most_favorable_favorable
    Int? adjustment
  }
  command <<<
    nice \
      ~{if (most_favorable_favorable) then "-20" else ""} \
      ~{if defined(adjustment) then ("--adjustment " +  '"' + adjustment + '"') else ""}
  >>>
  parameter_meta {
    most_favorable_favorable: "(most favorable to the process) to 19 (least favorable to the process)."
    adjustment: "add integer N to the niceness (default 10)"
  }
  output {
    File out_stdout = stdout()
  }
}