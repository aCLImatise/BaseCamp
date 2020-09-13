version 1.0

task Bazam {
  input {
    File? bam
    String? dr
    String? filter
    String? gene
    String? regions
    Int? concurrency_parameter
    Boolean? name_pos
    File? output_file
    Int? pad
    Int? r_one
    Int? r_two
    String? sharding_factor_format
    String? jar
    String java
  }
  command <<<
    bazam \
      ~{java} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(dr) then ("-dr " +  '"' + dr + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(gene) then ("-gene " +  '"' + gene + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(concurrency_parameter) then ("-n " +  '"' + concurrency_parameter + '"') else ""} \
      ~{if (name_pos) then "-namepos" else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(pad) then ("-pad " +  '"' + pad + '"') else ""} \
      ~{if defined(r_one) then ("-r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("-r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(sharding_factor_format) then ("-s " +  '"' + sharding_factor_format + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    bam: "BAM file to extract read pairs from"
    dr: "Specify a read name to debug: processing of the read\\nwill be verbosey printed"
    filter: "Filter using specified groovy expression"
    gene: "Extract region of given gene"
    regions: "Regions to include reads (and mates of reads) from"
    concurrency_parameter: "Concurrency parameter (4)"
    name_pos: "Add original position to the read names"
    output_file: "Output file"
    pad: "Amount to pad regions by (0)"
    r_one: "Output for R1 if extracting FASTQ in separate files"
    r_two: "Output for R2 if extracting FASTQ in separate files"
    sharding_factor_format: "Sharding factor: format <n>,<N>: output only reads\\nbelonging to shard n of N"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}