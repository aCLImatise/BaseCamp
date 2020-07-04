version 1.0

task DshFilterVcf {
  input {
    Boolean? about
    Boolean? id
    Boolean? range
    Boolean? qual
    Boolean? filter
    Boolean? script
    Boolean? input_vcf_file
    Boolean? output_vcf_file
  }
  command <<<
    dsh-filter-vcf \
      ~{true="--about" false="" about} \
      ~{true="--id" false="" id} \
      ~{true="--range" false="" range} \
      ~{true="--qual" false="" qual} \
      ~{true="--filter" false="" filter} \
      ~{true="--script" false="" script} \
      ~{true="--input-vcf-file" false="" input_vcf_file} \
      ~{true="--output-vcf-file" false="" output_vcf_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    id: "[java.util.List<java.lang.String>]  filter by id, specify as id1,id2,id3 [optional]"
    range: "[class java.lang.String]  filter by range, specify as chrom:start-end in 0-based coordindates [optional]"
    qual: "[class java.lang.Double]  filter by quality score [optional]"
    filter: "filter to records that have passed all filters [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_vcf_file: "[class java.io.File]  output VCF file, default stdout [optional]"
  }
}