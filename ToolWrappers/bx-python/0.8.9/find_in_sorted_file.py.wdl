version 1.0

task FindInSortedFilepy {
  command <<<
    find_in_sorted_file_py
  >>>
  output {
    File out_stdout = stdout()
  }
}