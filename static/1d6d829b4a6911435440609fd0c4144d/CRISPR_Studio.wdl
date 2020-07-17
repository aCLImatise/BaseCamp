version 1.0

task CRISPRStudio {
  input {
    File? in_file
    File? list_of_isolates
    Boolean? gray_out_unique
    Boolean? gray_out_similar
    Boolean? check_fast_a
    String? sort
    Boolean? rerun
    String? cut_off
    Boolean? spacer_size
  }
  command <<<
    CRISPR_Studio \
      ~{if defined(in_file) then ("--inFile " +  '"' + in_file + '"') else ""} \
      ~{if defined(list_of_isolates) then ("--listOfIsolates " +  '"' + list_of_isolates + '"') else ""} \
      ~{true="--grayOutUnique" false="" gray_out_unique} \
      ~{true="--grayOutSimilar" false="" gray_out_similar} \
      ~{true="--checkFasta" false="" check_fast_a} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--rerun" false="" rerun} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{true="--spacerSize" false="" spacer_size}
  >>>
  parameter_meta {
    in_file: "GFF3 file generated with CRISPRDetect (Local installation or web platform http://brownlabtools.otag o.ac.nz/CRISPRDetect/predict_crispr_array.html)."
    list_of_isolates: "CRISPR_Studio will generate the figure with a subset of isolates listed in the file (Optional: By default, CRISPR_Studio will generate a figure with all the isolates)."
    gray_out_unique: "The unique spacers will be grayed (Optional: by default, CRISPR_Studio attributes a unique color to each group of spacer and unique spacers.)"
    gray_out_similar: "The conserved spacers will be grayed (Optional: by default, CRISPR_Studio attributes a unique color to each group of spacer and unique spacers.)"
    check_fast_a: "Verification of the fasta file generated from the GFF file will be skipped if this flag is provided. The verification is mainly based on the length of the spacer sequences. If a spacer is 1.5 time shorter or longer than the average spacer size of the dataset, a warning is raised and the script stops (Verification is ran by default). Correction can be either made in the initial gff file or in the fasta file. If the later, provide the name of the fasta file after the flag (ex. -f corrected_sequences.fasta"
    sort: "The order of the isolates in the figure: Available option: CRISPRDetect, DistMatrix or File providing a list of the isolates in the desired order. CRISPRDetect = order in the gff file. DistMatrix = Order extracted from a distance matrix based on the similarity of the arrays in the isolates. File = Order privided in a single column file with the isolates names as the should appear in the figure. The option -l override this option (Default: DistMatrix)"
    rerun: "Use this option to keep the same color attributed to the spacer during a previous analysis"
    cut_off: "Set to score cutoff for pairing of the spacers (default = 2)"
    spacer_size: "Show the size of the spacers over the boxed diamonds. We recommend to use this option only for experimental analysis of the data"
  }
}