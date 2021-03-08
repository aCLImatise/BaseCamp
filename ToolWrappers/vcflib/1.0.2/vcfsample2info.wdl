version 1.0

task Vcfsample2info {
  input {
    Boolean? field
    Boolean? info
    Boolean? average
    Boolean? median
    Boolean? min
    Boolean? max
    File vcf_file
  }
  command <<<
    vcfsample2info \
      ~{vcf_file} \
      ~{if (field) then "--field" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (average) then "--average" else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    field: "Add information about this field in samples to INFO column"
    info: "Store the computed statistic in this info field"
    average: "Take the mean of samples for field (default)"
    median: "Use the median"
    min: "Use the min"
    max: "Use the max"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}