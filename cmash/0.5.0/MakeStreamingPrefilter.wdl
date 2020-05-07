version 1.0

task MakeStreamingPrefilter.pyRange {
  input {
    String? referenceReferenceFile
    String? outOutFile
    String? rangeRange
  }
  command <<<
    MakeStreamingPrefilter.py range \
      ~{referenceReferenceFile} \
      ~{outOutFile} \
      ~{rangeRange}
  >>>
}