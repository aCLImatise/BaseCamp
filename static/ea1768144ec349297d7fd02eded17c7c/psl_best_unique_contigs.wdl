version 1.0

task PslBestUniqueContigs.py {
  input {
    String? input_file_psl
    Boolean? same_gene
    String? output_psl_file
    String? ties
    String? ties_overlapping_s
    String? output_multiple_alignments
    String? output_unique_alignments
    String? anchor
    String? processes
    String? buffer_size
    String? mismatches
    String? tmp_dir
  }
  command <<<
    psl_best_unique_contigs.py \
      ~{if defined(input_file_psl) then ("--input " +  '"' + input_file_psl + '"') else ""} \
      ~{true="--same_gene" false="" same_gene} \
      ~{if defined(output_psl_file) then ("--output " +  '"' + output_psl_file + '"') else ""} \
      ~{if defined(ties) then ("--ties " +  '"' + ties + '"') else ""} \
      ~{if defined(ties_overlapping_s) then ("--ties-overlappings " +  '"' + ties_overlapping_s + '"') else ""} \
      ~{if defined(output_multiple_alignments) then ("--output_multiple_alignments " +  '"' + output_multiple_alignments + '"') else ""} \
      ~{if defined(output_unique_alignments) then ("--output_unique_alignments " +  '"' + output_unique_alignments + '"') else ""} \
      ~{if defined(anchor) then ("--anchor " +  '"' + anchor + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  parameter_meta {
    input_file_psl: "The input file in PSL format."
    same_gene: "The gene name appears in the query name as for example ge=ENSG010101."
    output_psl_file: "The output PSL file containing the contigs with the best alignment which must be unique."
    ties: "A input text file containing a string (which is part of a gene) for which ties are allowed."
    ties_overlapping_s: "A input text file containing a list of pairs of genes which overlap each other."
    output_multiple_alignments: "A text file containing a list with the names of the contigs such that the best of their alignments are not unique."
    output_unique_alignments: "A text file containing a list with the names of the contigs such that the best of their alignments are unique."
    anchor: "The minimum length of the anchor (i.e. overhang), i.e. shortest part of a mapping sequence. Default is 15."
    processes: "Number of parallel threads/processes/CPUs to be used for computations. In case of value 0 then the program will use all the CPUs which are found. The default value is 0."
    buffer_size: "The main buffer size which is passed further to GNU sort command. For more see '--buffer-size' of GNU sort command. Default is '80%'."
    mismatches: "All alignments having strictly more mismatches will be removed. Default is '1000'."
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
  }
}