version 1.0

task GetFastaFromIdspy {
  input {
    Boolean? reverse
  }
  command <<<
    getFastaFromIds_py \
      ~{if (reverse) then "--reverse" else ""}
  >>>
  parameter_meta {
    reverse: "Retrieve entries which are not in the list, as in grep -v (a\\nhomage).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}