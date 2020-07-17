version 1.0

task Binsanity {
  input {
    String? specify_coverage_file
    String? specify_directory_containing
    String? specify_preference_default
    Int? specify_max_number
    String? specify_convergence_default
    String? specify_damping_factor
    String? specify_fasta_file
    String? specify_contig_size
    String? give_name_directory
    String? out_prefix
    String? log
  }
  command <<<
    Binsanity \
      ~{if defined(specify_coverage_file) then ("-c " +  '"' + specify_coverage_file + '"') else ""} \
      ~{if defined(specify_directory_containing) then ("-f " +  '"' + specify_directory_containing + '"') else ""} \
      ~{if defined(specify_preference_default) then ("-p " +  '"' + specify_preference_default + '"') else ""} \
      ~{if defined(specify_max_number) then ("-m " +  '"' + specify_max_number + '"') else ""} \
      ~{if defined(specify_convergence_default) then ("-v " +  '"' + specify_convergence_default + '"') else ""} \
      ~{if defined(specify_damping_factor) then ("-d " +  '"' + specify_damping_factor + '"') else ""} \
      ~{if defined(specify_fasta_file) then ("-l " +  '"' + specify_fasta_file + '"') else ""} \
      ~{if defined(specify_contig_size) then ("-x " +  '"' + specify_contig_size + '"') else ""} \
      ~{if defined(give_name_directory) then ("-o " +  '"' + give_name_directory + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    specify_coverage_file: "Specify a Coverage File"
    specify_directory_containing: "Specify directory containing your contigs"
    specify_preference_default: "Specify a preference (default is -3) Note: decreasing the preference leads to more lumping, increasing will lead to more splitting. If your range of coverages are low you will want to decrease the preference, if you have 10 or less replicates increasing the preference could benefit you."
    specify_max_number: "Specify a max number of iterations [default is 2000]"
    specify_convergence_default: "Specify the convergence iteration number (default is 200) e.g Number of iterations with no change in the number of estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1, default is 0.9"
    specify_fasta_file: "Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default 1000 bp]"
    give_name_directory: "Give a name to the directory BinSanity results will be output in [Default is 'BINSANITY-RESULTS']"
    out_prefix: "Sepcify what prefix you want appended to final Bins {optional}"
    log: "specify a name for the log file [Default is 'binsanity-logfile.txt']"
  }
}