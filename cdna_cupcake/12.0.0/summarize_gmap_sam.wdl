version 1.0

task SummarizeGmapSam.py {
  input {
    String? inputInputFaOrFq
    String? samSamFile
  }
  command <<<
    summarize_gmap_sam.py \
      ~{inputInputFaOrFq} \
      ~{samSamFile}
  >>>
}