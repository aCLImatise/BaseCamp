version 1.0

task Genotyphi {
  input {
    String? mode
    Array[String] vcf
    Array[String] bam
    File? ref_id
    Int? phred
    Int? min_prop
    String? ref
    File? location_name_output
    File? sam_tools_location
    File? bcf_tools_location
  }
  command <<<
    genotyphi \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ref_id) then ("--ref_id " +  '"' + ref_id + '"') else ""} \
      ~{if defined(phred) then ("--phred " +  '"' + phred + '"') else ""} \
      ~{if defined(min_prop) then ("--min_prop " +  '"' + min_prop + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(location_name_output) then ("--output " +  '"' + location_name_output + '"') else ""} \
      ~{if defined(sam_tools_location) then ("--samtools_location " +  '"' + sam_tools_location + '"') else ""} \
      ~{if defined(bcf_tools_location) then ("--bcftools_location " +  '"' + bcf_tools_location + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genotyphi:1.9.0--0"
  }
  parameter_meta {
    mode: "Mode to run in based on input files (vcf, bam, or\\nvcf_parsnp)"
    vcf: "VCF file(s) to genotype (Mapping MUST have been done\\nusing CT18 as a reference sequence)"
    bam: "BAM file(s) to genotype (Mapping MUST have been done\\nusing CT18 as a reference sequence)"
    ref_id: "Name of the reference in the VCF file (#CHROM column)\\nor fasta file. Note that CT18 has genotype 3.2.1. If\\nall your strains return this genotype, it is likely\\nyou have specified the name of the refrence sequence\\nincorrectly; please check your VCFs."
    phred: "Minimum phred quality to count a variant call vs CT18\\nas a true SNP (default 20)"
    min_prop: "Minimum proportion of reads required to call a SNP\\n(default 0.1)"
    ref: "Reference sequence in fasta format. Required if bam\\nfiles provided."
    location_name_output: "Location and name for output file."
    sam_tools_location: "Location of folder containing samtools installation if\\nnot standard/in path."
    bcf_tools_location: "Location of folder containing bcftools installation if\\nnot standard/in path.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_location_name_output = "${in_location_name_output}"
  }
}