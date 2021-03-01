version 1.0

task Sum {
  input {
    Boolean? use_algorithm_use
    Boolean? sysv
  }
  command <<<
    sum \
      ~{if (use_algorithm_use) then "-r" else ""} \
      ~{if (sysv) then "--sysv" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_algorithm_use: "use BSD sum algorithm, use 1K blocks"
    sysv: "use System V sum algorithm, use 512 bytes blocks"
  }
  output {
    File out_stdout = stdout()
  }
}