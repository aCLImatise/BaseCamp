version 1.0

task FindInSortedFilepy {
  command <<<
    find_in_sorted_file_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}