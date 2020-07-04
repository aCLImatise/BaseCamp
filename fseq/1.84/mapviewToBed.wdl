version 1.0

task MapviewToBed.pl {
  input {
    Int min_qual
    Int max_hits
    File file
  }
  command <<<
    mapviewToBed.pl \
      ~{min_qual} \
      ~{max_hits} \
      ~{file}
  >>>
  parameter_meta {
    min_qual: "= Exclude alignments with <= this mapping quality score."
    max_hits: "= Exclude alignments with > this number of hits."
    file: "= Mapview file to convert."
  }
}