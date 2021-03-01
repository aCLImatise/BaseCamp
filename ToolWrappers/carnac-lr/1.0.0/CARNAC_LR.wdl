version 1.0

task CARNACLR {
  input {
    String? mandatory
    Int? number_threads_default
  }
  command <<<
    CARNAC_LR \
      ~{if defined(mandatory) then ("-f " +  '"' + mandatory + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory: "mandatory"
    number_threads_default: "the number of threads (default 2)"
  }
  output {
    File out_stdout = stdout()
  }
}