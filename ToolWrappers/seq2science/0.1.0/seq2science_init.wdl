version 1.0

task Seq2scienceInit {
  input {
    File? dir
  }
  command <<<
    seq2science init \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "The path to the directory where to initialise the\\nconfig and samples files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}