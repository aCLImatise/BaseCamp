version 1.0

task ExactSNP {
  input {
    File? specify_name_input
    File? specify_name_file
    File? specify_name_output
    File? provide_set_annotated
    Boolean? indicate_file_provided
    Int? specify_qvalue_cutoff
    Float? specify_minimum_fraction
    Int? specify_minimum_number_mismatched
    Int? specify_minimum_number_reads
    Int? specify_maximum_depth
    Int? specify_minimum_scores
    Int? specify_number_trimmed
    Int? specify_number_threads
    Boolean? output_version_program
    File? specify_path_save
  }
  command <<<
    exactSNP \
      ~{if defined(specify_name_input) then ("-i " +  '"' + specify_name_input + '"') else ""} \
      ~{if defined(specify_name_file) then ("-g " +  '"' + specify_name_file + '"') else ""} \
      ~{if defined(specify_name_output) then ("-o " +  '"' + specify_name_output + '"') else ""} \
      ~{if defined(provide_set_annotated) then ("-a " +  '"' + provide_set_annotated + '"') else ""} \
      ~{true="-b" false="" indicate_file_provided} \
      ~{if defined(specify_qvalue_cutoff) then ("-Q " +  '"' + specify_qvalue_cutoff + '"') else ""} \
      ~{if defined(specify_minimum_fraction) then ("-f " +  '"' + specify_minimum_fraction + '"') else ""} \
      ~{if defined(specify_minimum_number_mismatched) then ("-n " +  '"' + specify_minimum_number_mismatched + '"') else ""} \
      ~{if defined(specify_minimum_number_reads) then ("-r " +  '"' + specify_minimum_number_reads + '"') else ""} \
      ~{if defined(specify_maximum_depth) then ("-x " +  '"' + specify_maximum_depth + '"') else ""} \
      ~{if defined(specify_minimum_scores) then ("-s " +  '"' + specify_minimum_scores + '"') else ""} \
      ~{if defined(specify_number_trimmed) then ("-t " +  '"' + specify_number_trimmed + '"') else ""} \
      ~{if defined(specify_number_threads) then ("-T " +  '"' + specify_number_threads + '"') else ""} \
      ~{true="-v" false="" output_version_program} \
      ~{if defined(specify_path_save) then ("-C " +  '"' + specify_path_save + '"') else ""}
  >>>
  parameter_meta {
    specify_name_input: "Specify name of an input file including read mapping results. The"
    specify_name_file: "Specify name of the file including all reference sequences. Only one single FASTA format file should be provided."
    specify_name_output: "Specify name of the output file. This program outputs a VCF format file that includes discovered SNPs."
    provide_set_annotated: "Provide a set of annotated SNPs (e.g. SNPs included in the dbSNP database). The supplied file should be in VCF format (gzipped file is accepted). Providing known SNPs to the program should improve its SNP calling performance. Note that the provided SNPs may or may not be called."
    indicate_file_provided: "Indicate the input file provided via -i is in BAM format."
    specify_qvalue_cutoff: "Specify the q-value cutoff for SNP calling at sequencing depth of 50X. 12 by default. The corresponding p-value cutoff is 10^(-1*Q). Note that this program automatically adjusts the q-value cutoff according to the sequencing depth at each chromosomal location."
    specify_minimum_fraction: "Specify the minimum fraction of mis-matched bases a SNP-containing location must have. Its value must between 0 and 1. 0 by default."
    specify_minimum_number_mismatched: "Specify the minimum number of mis-matched bases a SNP-containing location must have. 1 by default."
    specify_minimum_number_reads: "Specify the minimum number of mapped reads a SNP-containing location must have (ie. the minimum coverage). 1 by default."
    specify_maximum_depth: "Specify the maximum depth a SNP location is allowed to have. 1,000,000 reads by default. This option is useful for removing PCR artefacts."
    specify_minimum_scores: "Specify the minimum base quality scores (Phred scores) read bases must satisfy to be used for SNP calling. 13 by default. Read bases with quality scores less than 13 will be excluded from the analysis."
    specify_number_trimmed: "Specify the number of bases trimmed off from each end of the read. 3 by default."
    specify_number_threads: "Specify the number of threads. 1 by default."
    output_version_program: "output version of the program."
    specify_path_save: "Specify the path to save the temporary files."
  }
}