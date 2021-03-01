version 1.0

task Dshfiltervcf {
  input {
    Boolean? about
    Boolean? id
    Boolean? range
    Boolean? qual
    Boolean? filter
    Boolean? script
    Boolean? input_vcf_file
    File? output_vcf_file
  }
  command <<<
    dsh_filter_vcf \
      ~{if (about) then "--about" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (qual) then "--qual" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_vcf_file) then "--input-vcf-file" else ""} \
      ~{if (output_vcf_file) then "--output-vcf-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
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
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}