version 1.0

task SnpSiftSplit {
  input {
    Boolean? join_files_stdout
    Int? _split_lines
    String? jar
    String default
  }
  command <<<
    SnpSift split \
      ~{default} \
      ~{if (join_files_stdout) then "-j" else ""} \
      ~{if defined(_split_lines) then ("-l " +  '"' + _split_lines + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    join_files_stdout: ": Join all files in command line (output = STDOUT)."
    _split_lines: ": Split by 'num' lines."
    jar: ""
    default: ": Split by chromosome (one file per chromosome)."
  }
  output {
    File out_stdout = stdout()
  }
}