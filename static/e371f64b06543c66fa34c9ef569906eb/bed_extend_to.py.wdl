version 1.0

task BedExtendTopy {
  command <<<
    bed_extend_to_py
  >>>
  output {
    File out_stdout = stdout()
  }
}