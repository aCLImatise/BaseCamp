version 1.0

task StripSamSeqQualNoself.awk {
  command <<<
    strip_sam_seq_qual_noself.awk
  >>>
}