version 1.0

task ExactSNP {
  input {
    File? specify_name_input
    File? specify_name_sequences
    File? specify_name_outputs
    File? provide_set_included
    Boolean? indicate_input_file
    Int? specify_qvalue_cutoff
    Float? specify_minimum_fraction
    Int? specify_minimum_number_have
    Int? specify_minimum_number_reads
    Int? specify_maximum_depth
    Int? specify_base_scores
    Int? specify_number_bases
    Int? specify_number_threads
    Boolean? output_version_program
    File? specify_path_save
  }
  command <<<
    exactSNP \
      ~{if defined(specify_name_input) then ("-i " +  '"' + specify_name_input + '"') else ""} \
      ~{if defined(specify_name_sequences) then ("-g " +  '"' + specify_name_sequences + '"') else ""} \
      ~{if defined(specify_name_outputs) then ("-o " +  '"' + specify_name_outputs + '"') else ""} \
      ~{if defined(provide_set_included) then ("-a " +  '"' + provide_set_included + '"') else ""} \
      ~{if (indicate_input_file) then "-b" else ""} \
      ~{if defined(specify_qvalue_cutoff) then ("-Q " +  '"' + specify_qvalue_cutoff + '"') else ""} \
      ~{if defined(specify_minimum_fraction) then ("-f " +  '"' + specify_minimum_fraction + '"') else ""} \
      ~{if defined(specify_minimum_number_have) then ("-n " +  '"' + specify_minimum_number_have + '"') else ""} \
      ~{if defined(specify_minimum_number_reads) then ("-r " +  '"' + specify_minimum_number_reads + '"') else ""} \
      ~{if defined(specify_maximum_depth) then ("-x " +  '"' + specify_maximum_depth + '"') else ""} \
      ~{if defined(specify_base_scores) then ("-s " +  '"' + specify_base_scores + '"') else ""} \
      ~{if defined(specify_number_bases) then ("-t " +  '"' + specify_number_bases + '"') else ""} \
      ~{if defined(specify_number_threads) then ("-T " +  '"' + specify_number_threads + '"') else ""} \
      ~{if (output_version_program) then "-v" else ""} \
      ~{if defined(specify_path_save) then ("-C " +  '"' + specify_path_save + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_name_input: "Specify name of an input file including read mapping results. The"
    specify_name_sequences: "Specify name of the file including all reference sequences. Only\\none single FASTA format file should be provided."
    specify_name_outputs: "Specify name of the output file. This program outputs a VCF format\\nfile that includes discovered SNPs."
    provide_set_included: "Provide a set of annotated SNPs (e.g. SNPs included in the dbSNP\\ndatabase). The supplied file should be in VCF format (gzipped file\\nis accepted). Providing known SNPs to the program should improve\\nits SNP calling performance. Note that the provided SNPs may or\\nmay not be called."
    indicate_input_file: "Indicate the input file provided via -i is in BAM format."
    specify_qvalue_cutoff: "Specify the q-value cutoff for SNP calling at sequencing depth of\\n50X. 12 by default. The corresponding p-value cutoff is 10^(-1*Q).\\nNote that this program automatically adjusts the q-value cutoff\\naccording to the sequencing depth at each chromosomal location."
    specify_minimum_fraction: "Specify the minimum fraction of mis-matched bases a SNP-containing\\nlocation must have. Its value must between 0 and 1. 0 by default."
    specify_minimum_number_have: "Specify the minimum number of mis-matched bases a SNP-containing\\nlocation must have. 1 by default."
    specify_minimum_number_reads: "Specify the minimum number of mapped reads a SNP-containing\\nlocation must have (ie. the minimum coverage). 1 by default."
    specify_maximum_depth: "Specify the maximum depth a SNP location is allowed to have.\\n1,000,000 reads by default. This option is useful for removing PCR\\nartefacts."
    specify_base_scores: "Specify the minimum base quality scores (Phred scores) read bases\\nmust satisfy to be used for SNP calling. 13 by default. Read bases\\nwith quality scores less than 13 will be excluded from the\\nanalysis."
    specify_number_bases: "Specify the number of bases trimmed off from each end of the read.\\n3 by default."
    specify_number_threads: "Specify the number of threads. 1 by default."
    output_version_program: "output version of the program."
    specify_path_save: "Specify the path to save the temporary files."
  }
  output {
    File out_stdout = stdout()
    File out_specify_name_outputs = "${in_specify_name_outputs}"
  }
}