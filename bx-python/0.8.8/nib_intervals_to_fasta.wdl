version 1.0

task NibIntervalsToFasta.pyNibFile {
  input {
    String? rangeRangeFile
    String? nibNibFile
  }
  command <<<
    nib_intervals_to_fasta.py nib_file \
      ~{rangeRangeFile} \
      ~{nibNibFile}
  >>>
}