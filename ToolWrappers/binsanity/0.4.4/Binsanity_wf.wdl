version 1.0

task Binsanitywf {
  input {
    File? specify_coverage_log
    Directory? specify_directory_containing
    Int? specify_preference_note
    Int? specify_max_number
    Int? specify_iteration_number
    Float? specify_damping_factor
    File? specify_fasta_file
    Int? specify_contig_size
    Directory? give_name_directory
    Int? threads
    Int? km_er
    String? prefix
    Int? refine_preference
    String? bin_prefix
  }
  command <<<
    Binsanity_wf \
      ~{if defined(specify_coverage_log) then ("-c " +  '"' + specify_coverage_log + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_coverage_log: "Specify a Transformed Coverage File\\ne.g Log transformed"
    specify_directory_containing: "Specify directory containing your contigs"
    specify_preference_note: "Specify a preference [Default: -3]\\nNote: decreasing the preference leads to more lumping,\\nincreasing will lead to more splitting. If your range\\nof coverages are low you will want to decrease the\\npreference, if you have 10 or less replicates increasing\\nthe preference could benefit you."
    specify_max_number: "Specify a max number of iterations [Default: 4000]"
    specify_iteration_number: "Specify the convergence iteration number [Default: 400]\\ne.g Number of iterations with no change in the number\\nof estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1, [Default: 0.95]"
    specify_fasta_file: "Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default: 1000 bp]"
    give_name_directory: "Give a name to the directory BinSanity results will be output in\\n[Default: 'BINSANITY-RESULTS']"
    threads: "Indicate how many threads you want dedicated to the subprocess CheckM. [Default=1]"
    km_er: "Indicate a number for the kmer calculation, the [Default: 4]"
    prefix: "Specify a prefix to append to the start of all files generated during Binsanity"
    refine_preference: "Specify a preference for refinement. [Default: -25]"
    bin_prefix: "Sepcify what prefix you want appended to final Bins {optional}"
  }
  output {
    File out_stdout = stdout()
    Directory out_give_name_directory = "${in_give_name_directory}"
  }
}