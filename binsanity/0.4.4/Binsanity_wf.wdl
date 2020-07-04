version 1.0

task BinsanityWf {
  input {
    String? specify_coverage_file
    String? specify_directory_containing
    String? specify_preference_note
    Int? specify_max_number
    String? specify_iteration_number
    String? specify_damping_factor
    String? specify_fasta_file
    Int? specify_contig_size
    String? give_name_directory
    String? threads
    String? km_er
    String? prefix
    String? refine_preference
    String? bin_prefix
  }
  command <<<
    Binsanity-wf \
      ~{if defined(specify_coverage_file) then ("-c " +  '"' + specify_coverage_file + '"') else ""} \
      ~{if defined(specify_directory_containing) then ("-f " +  '"' + specify_directory_containing + '"') else ""} \
      ~{if defined(specify_preference_note) then ("-p " +  '"' + specify_preference_note + '"') else ""} \
      ~{if defined(specify_max_number) then ("-m " +  '"' + specify_max_number + '"') else ""} \
      ~{if defined(specify_iteration_number) then ("-v " +  '"' + specify_iteration_number + '"') else ""} \
      ~{if defined(specify_damping_factor) then ("-d " +  '"' + specify_damping_factor + '"') else ""} \
      ~{if defined(specify_fasta_file) then ("-l " +  '"' + specify_fasta_file + '"') else ""} \
      ~{if defined(specify_contig_size) then ("-x " +  '"' + specify_contig_size + '"') else ""} \
      ~{if defined(give_name_directory) then ("-o " +  '"' + give_name_directory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(prefix) then ("--Prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(refine_preference) then ("--refine-preference " +  '"' + refine_preference + '"') else ""} \
      ~{if defined(bin_prefix) then ("--binPrefix " +  '"' + bin_prefix + '"') else ""}
  >>>
  parameter_meta {
    specify_coverage_file: "Specify a Transformed Coverage File e.g Log transformed"
    specify_directory_containing: "Specify directory containing your contigs"
    specify_preference_note: "Specify a preference [Default: -3] Note: decreasing the preference leads to more lumping, increasing will lead to more splitting. If your range of coverages are low you will want to decrease the preference, if you have 10 or less replicates increasing the preference could benefit you."
    specify_max_number: "Specify a max number of iterations [Default: 4000]"
    specify_iteration_number: "Specify the convergence iteration number [Default: 400] e.g Number of iterations with no change in the number of estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1, [Default: 0.95]"
    specify_fasta_file: "Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default: 1000 bp]"
    give_name_directory: "Give a name to the directory BinSanity results will be output in [Default: 'BINSANITY-RESULTS']"
    threads: "Indicate how many threads you want dedicated to the subprocess CheckM. [Default=1]"
    km_er: "Indicate a number for the kmer calculation, the [Default: 4]"
    prefix: "Specify a prefix to append to the start of all files generated during Binsanity"
    refine_preference: "Specify a preference for refinement. [Default: -25]"
    bin_prefix: "Sepcify what prefix you want appended to final Bins {optional}"
  }
}