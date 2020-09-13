version 1.0

task Afetch {
  input {
    Boolean? index
    Boolean? options
  }
  command <<<
    afetch \
      ~{if (index) then "--index" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    index: ": construct indices for the database"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}