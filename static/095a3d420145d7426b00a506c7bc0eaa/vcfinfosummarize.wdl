version 1.0

task Vcfinfosummarize {
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
    vcfinfosummarize \
      ~{vcf_file} \
      ~{if (field) then "--field" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (average) then "--average" else ""} \
      ~{if (median) then "--median" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    field: "Summarize this field in the INFO column"
    info: "Store the computed statistic in this info field"
    average: "Take the mean for field (default)"
    median: "Use the median"
    min: "Use the min"
    max: "Use the max"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}