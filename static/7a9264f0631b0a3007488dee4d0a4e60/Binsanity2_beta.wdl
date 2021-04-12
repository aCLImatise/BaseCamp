version 1.0

task Binsanity2beta {
  input {
    File? specify_coverage_file
    File? specify_directory_containing
    Int? specify_preference_note
    Int? specify_max_number
    Int? specify_iteration_number
    Float? specify_damping_factor
    File? namespecify_fasta_file
    Int? specify_contig_size
    Directory? directorygive_name_directory
    Int? check_m_threads
    Int? km_er
    Boolean? refine_preference
    Int? indicate_number_initial
    Boolean? skip_k_means
    String? prefix
    String b_insanity_lc
  }
  command <<<
    Binsanity2_beta \
      ~{b_insanity_lc} \
      ~{if defined(specify_coverage_file) then ("-c " +  '"' + specify_coverage_file + '"') else ""} \
      ~{if defined(specify_directory_containing) then ("-f " +  '"' + specify_directory_containing + '"') else ""} \
      ~{if defined(specify_preference_note) then ("-p " +  '"' + specify_preference_note + '"') else ""} \
      ~{if defined(specify_max_number) then ("-m " +  '"' + specify_max_number + '"') else ""} \
      ~{if defined(specify_iteration_number) then ("-v " +  '"' + specify_iteration_number + '"') else ""} \
      ~{if defined(specify_damping_factor) then ("-d " +  '"' + specify_damping_factor + '"') else ""} \
      ~{if defined(namespecify_fasta_file) then ("-l " +  '"' + namespecify_fasta_file + '"') else ""} \
      ~{if defined(specify_contig_size) then ("-x " +  '"' + specify_contig_size + '"') else ""} \
      ~{if defined(directorygive_name_directory) then ("-o " +  '"' + directorygive_name_directory + '"') else ""} \
      ~{if defined(check_m_threads) then ("--checkm_threads " +  '"' + check_m_threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (refine_preference) then "--refine-preference" else ""} \
      ~{if defined(indicate_number_initial) then ("-C " +  '"' + indicate_number_initial + '"') else ""} \
      ~{if (skip_k_means) then "--skip-kmeans" else ""} \
      ~{if defined(prefix) then ("--Prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0"
  }
  parameter_meta {
    specify_coverage_file: "Specify a Coverage File"
    specify_directory_containing: "Specify directory containing Fasta File to be clustered"
    specify_preference_note: "Specify a preference [Default: -3]\\nNote: decreasing the preference leads to more lumping,\\nincreasing will lead to more splitting. If your range\\nof coverages are low you will want to decrease the\\npreference, if you have 10 or less replicates increasing\\nthe preference could benefit you."
    specify_max_number: "Specify a max number of iterations [Default: 4000]"
    specify_iteration_number: "Specify the convergence iteration number [Default:400]\\ne.g Number of iterations with no change in the number\\nof estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1 [Default: 0.95]"
    namespecify_fasta_file: "Name\\nSpecify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default:1000 bp]"
    directorygive_name_directory: "Directory\\nGive a name to the directory BinSanity results will be output in\\n[Default:'BINSANITY-RESULTS']"
    check_m_threads: "Indicate how many threads you want dedicated to the subprocess CheckM [Default: 1]"
    km_er: "Indicate a number for the kmer calculation [Default: 4]"
    refine_preference: "Specify a preference for refinement [Default: -25]"
    indicate_number_initial: "Indicate a number of initial clusters for kmean [Default:25]"
    skip_k_means: "If you want to bypass kmeans clustering and ONLY us affinity propagation set this flag.\\nThis will replicated the BinsanityWF functionality. The default action without this flag\\nis to implement an initial kmeans clustering. The kmeans clustering step decreases the overall\\nmemory requirments for the script so skipping kmeans will lead to greater memory allocation.\\nIt is recommended that users only implement this flag if they are working with small assemblies\\nthat are < 25,000 contigs or if the user knows they have ample memory. For reference using this\\nflag with an assembly ~100,000 contigs used >600GB of RAM on our lab server."
    prefix: "Specify a prefix to append to the start of all directories generated during Binsanity"
    b_insanity_lc: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directorygive_name_directory = "${in_directorygive_name_directory}"
  }
}