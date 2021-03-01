version 1.0

task Gvcfgenotyper {
  input {
    Boolean? list
    Boolean? fast_a_ref
    File? output_file
    Boolean? log_file
    Boolean? output_type
    Boolean? region
    Boolean? max_alleles
  }
  command <<<
    gvcfgenotyper \
      ~{if (list) then "--list" else ""} \
      ~{if (fast_a_ref) then "--fasta-ref" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (log_file) then "--log-file" else ""} \
      ~{if (output_type) then "--output-type" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (max_alleles) then "--max-alleles" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: "<file>          plain text list of gvcfs to merge"
    fast_a_ref: "<file>          reference sequence"
    output_file: "<file>          output file name [stdout]"
    log_file: "<file>          logging information"
    output_type: "<b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    region: "<region>        region to genotype eg. chr1 or chr20:5000000-6000000"
    max_alleles: "INT             maximum number of alleles [50]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}