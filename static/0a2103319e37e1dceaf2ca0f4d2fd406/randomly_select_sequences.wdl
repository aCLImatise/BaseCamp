version 1.0

task RandomlySelectSequences.py {
  input {
    File? filenameFilename
    String? outputOutputPrefix
    String? sampleSampleSize
  }
  command <<<
    randomly_select_sequences.py \
      ~{filenameFilename} \
      ~{outputOutputPrefix} \
      ~{sampleSampleSize}
  >>>
}