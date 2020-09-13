version 1.0

task AlfredAse {
  input {
    Boolean? arg_min_mapping_quality
    Boolean? arg_min_base_quality
    Boolean? arg_reference_fasta
    Boolean? arg_na_sample
    File? arg_allelespecific_file
    Boolean? arg_input_phased
    Boolean? bcf_file_phased
    Boolean? output_het_input
    String input_dot_bam
  }
  command <<<
    alfred ase \
      ~{input_dot_bam} \
      ~{if (arg_min_mapping_quality) then "-m" else ""} \
      ~{if (arg_min_base_quality) then "-b" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_na_sample) then "-s" else ""} \
      ~{if (arg_allelespecific_file) then "-a" else ""} \
      ~{if (arg_input_phased) then "-v" else ""} \
      ~{if (bcf_file_phased) then "-p" else ""} \
      ~{if (output_het_input) then "-f" else ""}
  >>>
  parameter_meta {
    arg_min_mapping_quality: "[ --map-qual ] arg (=10)      min. mapping quality"
    arg_min_base_quality: "[ --base-qual ] arg (=10)     min. base quality"
    arg_reference_fasta: "[ --reference ] arg           reference fasta file"
    arg_na_sample: "[ --sample ] arg (=NA12878)   sample name"
    arg_allelespecific_file: "[ --ase ] arg (=\\\"as.tsv.gz\\\")  allele-specific output file"
    arg_input_phased: "[ --vcffile ] arg             input (phased) BCF file"
    bcf_file_phased: "[ --phased ]                  BCF file is phased and BAM is haplo-tagged"
    output_het_input: "[ --full ]                    output all het. input SNPs"
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_allelespecific_file = "${in_arg_allelespecific_file}"
  }
}