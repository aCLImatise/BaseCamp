version 1.0

task SvtoolsGenotype {
  input {
    String? input_vcf
    String? output_vcf
    File? bam
    File? ref_fast_a
    File? lib_info
    Int? min_aligned
    Int? number_pairs_sample
    Boolean? sum_quals
    Int? max_reads
    Int? max_ci_dist
    Float? split_weight
    Float? disc_weight
    File? write_alignment
  }
  command <<<
    svtools genotype \
      ~{if defined(input_vcf) then ("--input_vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_vcf) then ("--output_vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref_fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(lib_info) then ("--lib_info " +  '"' + lib_info + '"') else ""} \
      ~{if defined(min_aligned) then ("--min_aligned " +  '"' + min_aligned + '"') else ""} \
      ~{if defined(number_pairs_sample) then ("-n " +  '"' + number_pairs_sample + '"') else ""} \
      ~{if (sum_quals) then "--sum_quals" else ""} \
      ~{if defined(max_reads) then ("--max_reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(max_ci_dist) then ("--max_ci_dist " +  '"' + max_ci_dist + '"') else ""} \
      ~{if defined(split_weight) then ("--split_weight " +  '"' + split_weight + '"') else ""} \
      ~{if defined(disc_weight) then ("--disc_weight " +  '"' + disc_weight + '"') else ""} \
      ~{if defined(write_alignment) then ("--write_alignment " +  '"' + write_alignment + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_vcf: "VCF input (default: stdin)"
    output_vcf: "output VCF to write (default: stdout)"
    bam: "BAM or CRAM file"
    ref_fast_a: "Indexed reference FASTA file (recommended for reading\\nCRAM files)"
    lib_info: "create/read JSON file of library information"
    min_aligned: "minimum number of aligned bases to consider read as\\nevidence [20]"
    number_pairs_sample: "number of pairs to sample from BAM file for building\\ninsert size distribution [1000000]"
    sum_quals: "add genotyping quality to existing QUAL (default:\\noverwrite QUAL field)"
    max_reads: "maximum number of reads to assess at any variant\\n(reduces processing time in high-depth regions,\\ndefault: 10000)"
    max_ci_dist: "maximum size of a confidence interval before 95% CI is\\nused intead (default: 1e10)"
    split_weight: "weight for split reads [1]"
    disc_weight: "weight for discordant paired-end reads [1]"
    write_alignment: "write relevant reads to BAM file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}