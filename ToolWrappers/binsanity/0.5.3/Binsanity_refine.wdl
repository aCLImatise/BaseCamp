version 1.0

task Binsanityrefine {
  input {
    File? specify_coverage_file
    Directory? specify_directory_containing
    Int? specify_preference_default
    Int? specify_max_number
    Int? specify_number_default
    Int? km_er
    Float? specify_damping_factor
    File? specify_fasta_file
    Int? specify_contig_size
    Directory? give_name_directory
    File? log
    String? out_prefix
  }
  command <<<
    Binsanity_refine \
      ~{if defined(specify_coverage_file) then ("-c " +  '"' + specify_coverage_file + '"') else ""} \
      ~{if defined(specify_directory_containing) then ("-f " +  '"' + specify_directory_containing + '"') else ""} \
      ~{if defined(specify_preference_default) then ("-p " +  '"' + specify_preference_default + '"') else ""} \
      ~{if defined(specify_max_number) then ("-m " +  '"' + specify_max_number + '"') else ""} \
      ~{if defined(specify_number_default) then ("-v " +  '"' + specify_number_default + '"') else ""} \
      ~{if defined(km_er) then ("-kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(specify_damping_factor) then ("-d " +  '"' + specify_damping_factor + '"') else ""} \
      ~{if defined(specify_fasta_file) then ("-l " +  '"' + specify_fasta_file + '"') else ""} \
      ~{if defined(specify_contig_size) then ("-x " +  '"' + specify_contig_size + '"') else ""} \
      ~{if defined(give_name_directory) then ("-o " +  '"' + give_name_directory + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0"
  }
  parameter_meta {
    specify_coverage_file: "Specify a Coverage File"
    specify_directory_containing: "Specify directory containing your contigs"
    specify_preference_default: "Specify a preference (default is -25)\\nNote: decreasing the preference leads to more lumping,\\nincreasing will lead to more splitting. If your range\\nof coverages are low you will want to decrease the\\npreference, if you have 10 or less replicates increasing\\nthe preference could benefit you. For complex datasets\\nwith low abundance organisms a preference\\nof -25 was found to be optimal"
    specify_max_number: "Specify a max number of iterations (default is 4000)"
    specify_number_default: "Specify the convergence iteration number (default is 200)\\ne.g Number of iterations with no change in the number\\nof estimated clusters that stops the convergence."
    km_er: "Specify a number for kmer calculation. Default is 4.\\nTetramer frequencies are recommended"
    specify_damping_factor: "Specify a damping factor between 0.5 and 1, default is 0.9"
    specify_fasta_file: "Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off (Default 1000 bp)"
    give_name_directory: "Give a name to the directory BinSanity results will be output in\\n[Default is 'BINSANITY-REFINEMENT']"
    log: "Specify an output name for the log file. [Default: binsanity-refine.log]"
    out_prefix: "Sepcify what prefix you want appended to final Bins {optional}\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_give_name_directory = "${in_give_name_directory}"
    File out_log = "${in_log}"
  }
}