version 1.0

task Vcfinfosummarize {
  input {
    Boolean? field
    Boolean? info
    Boolean? average
    Boolean? median
    Boolean? min
    Boolean? max
    String vcf_file
  }
  command <<<
    vcfinfosummarize \
      ~{vcf_file} \
      ~{true="--field" false="" field} \
      ~{true="--info" false="" info} \
      ~{true="--average" false="" average} \
      ~{true="--median" false="" median} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max}
  >>>
  parameter_meta {
    field: "Summarize this field in the INFO column"
    info: "Store the computed statistic in this info field"
    average: "Take the mean for field (default)"
    median: "Use the median"
    min: "Use the min"
    max: "Use the max"
    vcf_file: ""
  }
}