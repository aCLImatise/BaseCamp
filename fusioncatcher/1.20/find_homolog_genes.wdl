version 1.0

task FindHomologGenes.py {
  input {
    String? input_file_bowtie
    String? output_text_tabseparated
    String? reads
    String? output_offending_pair_reads
    String? input_exons
    String? filter
    Boolean? dzero
    Boolean? done
    String? output_saved_from_pseudogenes
    String? input_pseudogenes
    String? processes
  }
  command <<<
    find_homolog_genes.py \
      ~{if defined(input_file_bowtie) then ("--input " +  '"' + input_file_bowtie + '"') else ""} \
      ~{if defined(output_text_tabseparated) then ("--output " +  '"' + output_text_tabseparated + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(output_offending_pair_reads) then ("--output_offending_pair_reads " +  '"' + output_offending_pair_reads + '"') else ""} \
      ~{if defined(input_exons) then ("--input_exons " +  '"' + input_exons + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--d0" false="" dzero} \
      ~{true="--d1" false="" done} \
      ~{if defined(output_saved_from_pseudogenes) then ("--output_saved_from_pseudogenes " +  '"' + output_saved_from_pseudogenes + '"') else ""} \
      ~{if defined(input_pseudogenes) then ("--input_pseudogenes " +  '"' + input_pseudogenes + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    input_file_bowtie: "The input file in Bowtie MAP format (sorted by read name) containing the short reads mapped on the transcripts (can be also STDIN)."
    output_text_tabseparated: "The output text tab-separated file containing the candidate homologous genes (the genes are sorted alphabetically on the each line)."
    reads: "The minimum number of reads which map simultaneously on two genes in order to be considered as homolog genes. Default is 1."
    output_offending_pair_reads: "The output text file containing the reads names (and its mate) which mapp simultaneously on transcripts from at least two genes."
    input_exons: "Database with exons position on chromosomes, e.g. 'more_exons_ensembl.txt'. This is used for filtering the UTRs extensions by removing any extension which overlaps with any exons from the database. This is optional."
    filter: "Input file which contain a pattern for genes which should be ignored/skipped from the analysis."
    dzero: "If it set then only the alignments of a read are taken into consideration which are at maximum zero mismatches away. This expects that the input has 4 columns instead of 3, and the fourth column contains the mismatches from Bowtie."
    done: "If it set then only the alignments of a read are taken into consideration which are at maximum one mismatch away. This works only for maximum two mismatches. This expects that the input has 4 columns instead of 3, and the fourth column contains the mismatches from Bowtie."
    output_saved_from_pseudogenes: "A file containing paths to candidate fusion genes and transcripts together with the ids/names of supporting reads."
    input_pseudogenes: "The input database with gene ids of the pseudogenes."
    processes: "Number of parallel processes/CPUs to be used for computations. In case of value 0 then the program will use all the CPUs which are found. The default value is 0."
  }
}