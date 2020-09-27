version 1.0

task Joingenes {
  input {
    File? gene_sets
    File? ofile_where_name
    Int? priorities
    File? input_file
    Int? error_distance
    String? gene_model
    Boolean? alternatives
    File? suppress
    Boolean? stop_in_coding
    Boolean? no_join
    Boolean? no_selection
    Boolean? only_compare
  }
  command <<<
    joingenes \
      ~{if defined(gene_sets) then ("--genesets " +  '"' + gene_sets + '"') else ""} \
      ~{if defined(ofile_where_name) then ("--output " +  '"' + ofile_where_name + '"') else ""} \
      ~{if defined(priorities) then ("--priorities " +  '"' + priorities + '"') else ""} \
      ~{if defined(input_file) then ("--inputfile " +  '"' + input_file + '"') else ""} \
      ~{if defined(error_distance) then ("--errordistance " +  '"' + error_distance + '"') else ""} \
      ~{if defined(gene_model) then ("--genemodel " +  '"' + gene_model + '"') else ""} \
      ~{if (alternatives) then "--alternatives" else ""} \
      ~{if defined(suppress) then ("--suppress " +  '"' + suppress + '"') else ""} \
      ~{if (stop_in_coding) then "--stopincoding" else ""} \
      ~{if (no_join) then "--nojoin" else ""} \
      ~{if (no_selection) then "--noselection" else ""} \
      ~{if (only_compare) then "--onlycompare" else ""}
  >>>
  parameter_meta {
    gene_sets: ",file2,...      -g file1,file2,...      where \\\"file1,file2,...,filen\\\" have to be data files with genesets in GTF format."
    ofile_where_name: "-o ofile                where \\\"ofile\\\" is the name for an output file (GTF)."
    priorities: ",pr2,...        -p pr1,pr2,...          where \\\"pr1,pr2,...,prn\\\" have to be positiv integers (different from 0)."
    input_file: "-f file         where \\\"file\\\" is the path of a file containing paths to GTF files and corresponding priorities in a tab-separated list (2 columns). Use this option instead of -g and -p\\nHave to be as many as filenames are added.\\nBigger numbers means a higher priority.\\nIf no priorities are added, the program will set all priorties to 1.\\nThis option is only useful, if there is more than one geneset.\\nIf there is a conflict between two transcripts, so that they can not be picked in the same genestructure, joingenes decides for the one with the highest priority."
    error_distance: "-e x                    where \\\"x\\\" is a non-negative integer\\nIf a prediction is <=x bases next to a prediction range border, the program supposes, that there could be a mistake.\\nDefault is 1000.\\nTo disable the function, set errordistance to a negative number (e.g. -1)."
    gene_model: "-m x                    where \\\"x\\\" is a genemodel from the set {eukaryote, bacterium}.\\nDefault is eukaryotic."
    alternatives: "-a                      is a flag\\nIf this flag is set, the program joines different genes, if the transcripts of the genes are alternative variants."
    suppress: ",pr2,..           -s pr1,pr2,...          where \\\"pr1,pr2,...,prm\\\" have to be positiv integers (different from 0).\\nDefault is none.\\nif the core of a joined/non-joined transcript has one of these priorities it will not occur in the output file."
    stop_in_coding: "-i                      is a flag\\nIf this flag is set, the program joines the stop_codons to the CDS."
    no_join: "-j                      is a flag (to disable joining).\\nIf this flag is set, the program will not join/merge/shuffle;\\nit will only decide between the unchanged input transcipts and output them."
    no_selection: "-l                      is a flag (to disable selection).\\nIf this flag is set, the program will NOT select at the end between \\\"contradictory\\\" transcripts.\\n\\\"contradictory\\\" is self defined with respect to known biological terms.\\nThe selection works with a self defined scoring function."
    only_compare: "-c                      is a flag.\\nIf this flag is set, it disables the normal function of the program and\\nactivates a compare and separate mode to separate equal transcripts from non equal ones."
  }
  output {
    File out_stdout = stdout()
    File out_ofile_where_name = "${in_ofile_where_name}"
    File out_suppress = "${in_suppress}"
  }
}