version 1.0

task Decidebak {
  input {
    Boolean? diploid
    Boolean? first_pass
    Int? number_threads_default
  }
  command <<<
    decide_bak \
      ~{if (diploid) then "--diploid" else ""} \
      ~{if (first_pass) then "--first_pass" else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0"
  }
  parameter_meta {
    diploid: "use the diploid model"
    first_pass: "do not display 'best k' at the end, inform user of rough estimation"
    number_threads_default: "number of threads (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}