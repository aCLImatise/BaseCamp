version 1.0

task ANARCI {
  input {
    File? sequence
    File? outfile
    String? scheme
    String? restrict
    File? csv
    File? outfile_hits
    File? hmmer_path
    Int? n_cpu
    Boolean? assign_germline
    String? use_species
    String? bit_score_threshold
  }
  command <<<
    ANARCI \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if defined(restrict) then ("--restrict " +  '"' + restrict + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(outfile_hits) then ("--outfile_hits " +  '"' + outfile_hits + '"') else ""} \
      ~{if defined(hmmer_path) then ("--hmmerpath " +  '"' + hmmer_path + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (assign_germline) then "--assign_germline" else ""} \
      ~{if defined(use_species) then ("--use_species " +  '"' + use_species + '"') else ""} \
      ~{if defined(bit_score_threshold) then ("--bit_score_threshold " +  '"' + bit_score_threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence: "A sequence or an input fasta file"
    outfile: "The output file to use. Default is stdout"
    scheme: "Which numbering scheme should be used. i, k, c, m, w\\nand a are shorthand for IMGT, Kabat, Chothia, Martin\\n(Extended Chothia), Wolfguy and Aho respectively.\\nDefault IMGT"
    restrict: "[{ig,tr,heavy,light,H,K,L,A,B} ...], -r {ig,tr,heavy,light,H,K,L,A,B} [{ig,tr,heavy,light,H,K,L,A,B} ...]\\nRestrict ANARCI to only recognise certain types of\\nreceptor chains."
    csv: "Write the output in csv format. Outfile must be\\nspecified. A csv file is written for each chain type\\n<outfile>_<chain_type>.csv. Kappa and lambda are\\nconsidered together."
    outfile_hits: "Output file for domain hit tables for each sequence.\\nOtherwise not output."
    hmmer_path: "The path to the directory containing hmmer programs.\\n(including hmmscan)"
    n_cpu: "Number of parallel processes to use. Default is 1."
    assign_germline: "Assign the v and j germlines to the sequence. The most\\nsequence identical germline is assigned."
    use_species: "Use a specific species in the germline assignment."
    bit_score_threshold: "Change the bit score threshold used to confirm an\\nalignment should be used."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_csv = "${in_csv}"
    File out_outfile_hits = "${in_outfile_hits}"
  }
}