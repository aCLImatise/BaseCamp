version 1.0

task AMOScmpshortReadsalignmentTrimmed {
  command <<<
    AMOScmp_shortReads_alignmentTrimmed
  >>>
  output {
    File out_stdout = stdout()
  }
}