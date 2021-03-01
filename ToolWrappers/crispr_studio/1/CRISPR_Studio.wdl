version 1.0

task CRISPRStudio {
  input {
    File? in_file
    File? list_of_isolates
    Boolean? gray_out_unique
    Boolean? gray_out_similar
    Boolean? check_fast_a
    File? sort
    Boolean? rerun
    Int? cut_off
    Boolean? spacer_size
  }
  command <<<
    CRISPR_Studio \
      ~{if defined(in_file) then ("--inFile " +  '"' + in_file + '"') else ""} \
      ~{if defined(list_of_isolates) then ("--listOfIsolates " +  '"' + list_of_isolates + '"') else ""} \
      ~{if (gray_out_unique) then "--grayOutUnique" else ""} \
      ~{if (gray_out_similar) then "--grayOutSimilar" else ""} \
      ~{if (check_fast_a) then "--checkFasta" else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if (rerun) then "--rerun" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (spacer_size) then "--spacerSize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "GFF3 file generated with CRISPRDetect (Local\\ninstallation or web platform http://brownlabtools.otag\\no.ac.nz/CRISPRDetect/predict_crispr_array.html)."
    list_of_isolates: "CRISPR_Studio will generate the figure with a subset\\nof isolates listed in the file (Optional: By default,\\nCRISPR_Studio will generate a figure with all the\\nisolates)."
    gray_out_unique: "The unique spacers will be grayed (Optional: by\\ndefault, CRISPR_Studio attributes a unique color to\\neach group of spacer and unique spacers.)"
    gray_out_similar: "The conserved spacers will be grayed (Optional: by\\ndefault, CRISPR_Studio attributes a unique color to\\neach group of spacer and unique spacers.)"
    check_fast_a: "Verification of the fasta file generated from the GFF\\nfile will be skipped if this flag is provided. The\\nverification is mainly based on the length of the\\nspacer sequences. If a spacer is 1.5 time shorter or\\nlonger than the average spacer size of the dataset, a\\nwarning is raised and the script stops (Verification\\nis ran by default). Correction can be either made in\\nthe initial gff file or in the fasta file. If the\\nlater, provide the name of the fasta file after the\\nflag (ex. -f corrected_sequences.fasta"
    sort: "The order of the isolates in the figure: Available\\noption: CRISPRDetect, DistMatrix or File providing a\\nlist of the isolates in the desired order.\\nCRISPRDetect = order in the gff file. DistMatrix =\\nOrder extracted from a distance matrix based on the\\nsimilarity of the arrays in the isolates. File = Order\\nprivided in a single column file with the isolates\\nnames as the should appear in the figure. The option\\n-l override this option (Default: DistMatrix)"
    rerun: "Use this option to keep the same color attributed to\\nthe spacer during a previous analysis"
    cut_off: "Set to score cutoff for pairing of the spacers\\n(default = 2)"
    spacer_size: "Show the size of the spacers over the boxed diamonds.\\nWe recommend to use this option only for experimental\\nanalysis of the data\\n"
  }
  output {
    File out_stdout = stdout()
  }
}