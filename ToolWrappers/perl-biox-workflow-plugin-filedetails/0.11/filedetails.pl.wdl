version 1.0

task Filedetailspl {
  input {
    Boolean? check_dir
    Boolean? man
    Boolean? print_dir
    Boolean? print_stdout
    Boolean? line_count
  }
  command <<<
    filedetails_pl \
      ~{if (check_dir) then "--check_dir" else ""} \
      ~{if (man) then "--man" else ""} \
      ~{if (print_dir) then "--print_dir" else ""} \
      ~{if (print_stdout) then "--print_stdout" else ""} \
      ~{if (line_count) then "--line_count" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check_dir: "- Str. Directory to check for files."
    man: "- Bool. Display man page"
    print_dir: "- Bool. Default=0. Create a directory for\\nmetadata, and write details to file\\nself->check_dir/meta/file.meta Defaults to\\nyes."
    print_stdout: "- Bool. Default=1. Print metadata to STDOUT.\\nDefault is yes."
    line_count: "- Bool. Default=1. q(Get a line count per file)"
  }
  output {
    File out_stdout = stdout()
  }
}