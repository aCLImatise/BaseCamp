version 1.0

task Binsanitylc {
  input {
    File? specify_coverage_file
    File? specify_directory_containing
    Int? specify_preference_note
    Int? specify_max_number
    Int? specify_iteration_number
    Float? specify_damping_factor
    File? name_specify_file
    Int? specify_contig_size
    Directory? directory_give_name
    Int? check_m_threads
    Int? k_mean_threads
    Int? km_er
    Boolean? refine_preference
    Int? indicate_number_initial
    String? prefix
  }
  command <<<
    Binsanity_lc \
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
      ~{if (refine_preference) then "--refine-preference" else ""} \
      ~{if defined(indicate_number_initial) then ("-C " +  '"' + indicate_number_initial + '"') else ""} \
      ~{if defined(prefix) then ("--Prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_coverage_file: "Specify a Coverage File"
    specify_directory_containing: "Specify directory containing Fasta File to be clustered"
    specify_preference_note: "Specify a preference [Default: -3]\\nNote: decreasing the preference leads to more lumping,\\nincreasing will lead to more splitting. If your range\\nof coverages are low you will want to decrease the\\npreference, if you have 10 or less replicates increasing\\nthe preference could benefit you."
    specify_max_number: "Specify a max number of iterations [Default: 4000]"
    specify_iteration_number: "Specify the convergence iteration number [Default:400]\\ne.g Number of iterations with no change in the number\\nof estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1 [Default: 0.95]"
    name_specify_file: "Name     Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default:1000 bp]"
    directory_give_name: "Directory   Give a name to the directory BinSanity results will be output in\\n[Default:'BINSANITY-RESULTS']"
    check_m_threads: "Indicate how many threads you want dedicated to the subprocess CheckM [Default: 1]"
    k_mean_threads: "Indicate how many threads you want dedicated to kmeans clustering\\n[Default: 1]"
    km_er: "Indicate a number for the kmer calculation [Default: 4]"
    refine_preference: "Specify a preference for refinement [Default: -25]"
    indicate_number_initial: "Indicate a number of initial clusters for kmean [Default:100]"
    prefix: "Specify a prefix to append to the start of all directories generated during Binsanity"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_give_name = "${in_directory_give_name}"
  }
}