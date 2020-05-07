version 1.0

task BedDiffBasewiseSummary.pyBedFile2 {
  input {
    String? bedBedFile1
    String? bedBedFile2
  }
  command <<<
    bed_diff_basewise_summary.py bed_file_2 \
      ~{bedBedFile1} \
      ~{bedBedFile2}
  >>>
}