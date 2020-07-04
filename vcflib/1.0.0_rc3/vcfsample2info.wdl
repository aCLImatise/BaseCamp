version 1.0

task Vcfsample2info {
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
    vcfsample2info \
      ~{vcf_file} \
      ~{true="--field" false="" field} \
      ~{true="--info" false="" info} \
      ~{true="--average" false="" average} \
      ~{true="--median" false="" median} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max}
  >>>
  parameter_meta {
    field: "Add information about this field in samples to INFO column"
    info: "Store the computed statistic in this info field"
    average: "Take the mean of samples for field (default)"
    median: "Use the median"
    min: "Use the min"
    max: "Use the max"
    vcf_file: ""
  }
}