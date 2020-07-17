version 1.0

task BinsanityLc {
  input {
    String? specify_coverage_file
    String? specify_directory_containing
    String? specify_preference_note
    Int? specify_max_number
    String? specify_iteration_number
    String? specify_damping_factor
    String? name_specify_file
    Int? specify_contig_size
    String? directory_give_name
    String? check_m_threads
    String? k_mean_threads
    String? km_er
    Boolean? refine_preference
    String? indicate_number_initial
    String? prefix
  }
  command <<<
    Binsanity-lc \
      ~{if defined(specify_coverage_file) then ("-c " +  '"' + specify_coverage_file + '"') else ""} \
      ~{if defined(specify_directory_containing) then ("-f " +  '"' + specify_directory_containing + '"') else ""} \
      ~{if defined(specify_preference_note) then ("-p " +  '"' + specify_preference_note + '"') else ""} \
      ~{if defined(specify_max_number) then ("-m " +  '"' + specify_max_number + '"') else ""} \
      ~{if defined(specify_iteration_number) then ("-v " +  '"' + specify_iteration_number + '"') else ""} \
      ~{if defined(specify_damping_factor) then ("-d " +  '"' + specify_damping_factor + '"') else ""} \
      ~{if defined(name_specify_file) then ("-l " +  '"' + name_specify_file + '"') else ""} \
      ~{if defined(specify_contig_size) then ("-x " +  '"' + specify_contig_size + '"') else ""} \
      ~{if defined(directory_give_name) then ("-o " +  '"' + directory_give_name + '"') else ""} \
      ~{if defined(check_m_threads) then ("--checkm_threads " +  '"' + check_m_threads + '"') else ""} \
      ~{if defined(k_mean_threads) then ("--kmean_threads " +  '"' + k_mean_threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{true="--refine-preference" false="" refine_preference} \
      ~{if defined(indicate_number_initial) then ("-C " +  '"' + indicate_number_initial + '"') else ""} \
      ~{if defined(prefix) then ("--Prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    specify_coverage_file: "Specify a Coverage File"
    specify_directory_containing: "Specify directory containing Fasta File to be clustered"
    specify_preference_note: "Specify a preference [Default: -3] Note: decreasing the preference leads to more lumping,  increasing will lead to more splitting. If your range of coverages are low you will want to decrease the preference, if you have 10 or less replicates increasing the preference could benefit you."
    specify_max_number: "Specify a max number of iterations [Default: 4000]"
    specify_iteration_number: "Specify the convergence iteration number [Default:400] e.g Number of iterations with no change in the number  of estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1 [Default: 0.95]"
    name_specify_file: "Name     Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default:1000 bp]"
    directory_give_name: "Directory   Give a name to the directory BinSanity results will be output in  [Default:'BINSANITY-RESULTS']"
    check_m_threads: "Indicate how many threads you want dedicated to the subprocess CheckM [Default: 1]"
    k_mean_threads: "Indicate how many threads you want dedicated to kmeans clustering [Default: 1]"
    km_er: "Indicate a number for the kmer calculation [Default: 4]"
    refine_preference: "Specify a preference for refinement [Default: -25]"
    indicate_number_initial: "Indicate a number of initial clusters for kmean [Default:100]"
    prefix: "Specify a prefix to append to the start of all directories generated during Binsanity"
  }
}