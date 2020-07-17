version 1.0

task AlfredAse {
  input {
    Boolean? arg_min_mapping_quality
    Boolean? arg_min_base_quality
    Boolean? arg_reference_fasta
    Boolean? arg_na_sample
    Boolean? arg_allelespecific_output
    Boolean? arg_input_phased
    Boolean? bcf_file_phased
    Boolean? output_het_input
    String input_dot_bam
  }
  command <<<
    alfred ase \
      ~{input_dot_bam} \
      ~{true="-m" false="" arg_min_mapping_quality} \
      ~{true="-b" false="" arg_min_base_quality} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-s" false="" arg_na_sample} \
      ~{true="-a" false="" arg_allelespecific_output} \
      ~{true="-v" false="" arg_input_phased} \
      ~{true="-p" false="" bcf_file_phased} \
      ~{true="-f" false="" output_het_input}
  >>>
  parameter_meta {
    arg_min_mapping_quality: "[ --map-qual ] arg (=10)      min. mapping quality"
    arg_min_base_quality: "[ --base-qual ] arg (=10)     min. base quality"
    arg_reference_fasta: "[ --reference ] arg           reference fasta file"
    arg_na_sample: "[ --sample ] arg (=NA12878)   sample name"
    arg_allelespecific_output: "[ --ase ] arg (=\"as.tsv.gz\")  allele-specific output file"
    arg_input_phased: "[ --vcffile ] arg             input (phased) BCF file"
    bcf_file_phased: "[ --phased ]                  BCF file is phased and BAM is haplo-tagged"
    output_het_input: "[ --full ]                    output all het. input SNPs"
    input_dot_bam: ""
  }
}