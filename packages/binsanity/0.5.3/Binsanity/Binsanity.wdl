version 1.0

task Binsanity {
  input {
    File? specify_coverage_file
    Directory? specify_directorycontaining_contigs
    Int? specify_preference_default
    Int? specify_max_number
    Int? specify_number_default
    Float? specify_damping_factor
    File? specify_fasta_file
    Int? specify_contig_size
    Directory? give_name_directory
    String? out_prefix
    File? log
  }
  command <<<
    Binsanity \
      ~{if defined(specify_coverage_file) then ("-c " +  '"' + specify_coverage_file + '"') else ""} \
      ~{if defined(specify_directorycontaining_contigs) then ("-f " +  '"' + specify_directorycontaining_contigs + '"') else ""} \
      ~{if defined(specify_preference_default) then ("-p " +  '"' + specify_preference_default + '"') else ""} \
      ~{if defined(specify_max_number) then ("-m " +  '"' + specify_max_number + '"') else ""} \
      ~{if defined(specify_number_default) then ("-v " +  '"' + specify_number_default + '"') else ""} \
      ~{if defined(specify_damping_factor) then ("-d " +  '"' + specify_damping_factor + '"') else ""} \
      ~{if defined(specify_fasta_file) then ("-l " +  '"' + specify_fasta_file + '"') else ""} \
      ~{if defined(specify_contig_size) then ("-x " +  '"' + specify_contig_size + '"') else ""} \
      ~{if defined(give_name_directory) then ("-o " +  '"' + give_name_directory + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0"
  }
  parameter_meta {
    specify_coverage_file: "Specify a Coverage File"
    specify_directorycontaining_contigs: "Specify directory\\ncontaining your contigs"
    specify_preference_default: "Specify a preference (default is -3)\\nNote: decreasing the preference leads to more lumping,\\nincreasing will lead to more splitting. If your range\\nof coverages are low you will want to decrease the preference,\\nif you have 10 or less replicates increasing the preference could\\nbenefit you."
    specify_max_number: "Specify a max number of iterations [default is 2000]"
    specify_number_default: "Specify the convergence iteration number (default is 200)\\ne.g Number of iterations with no change in the number\\nof estimated clusters that stops the convergence."
    specify_damping_factor: "Specify a damping factor between 0.5 and 1, default is 0.9"
    specify_fasta_file: "Specify the fasta file containing contigs you want to cluster"
    specify_contig_size: "Specify the contig size cut-off [Default 1000 bp]"
    give_name_directory: "Give a name to the directory BinSanity results will be output in\\n[Default is 'BINSANITY-RESULTS']"
    out_prefix: "Sepcify what prefix you want appended to final Bins {optional}"
    log: "specify a name for the log file [Default is 'binsanity-logfile.txt']"
  }
  output {
    File out_stdout = stdout()
    Directory out_give_name_directory = "${in_give_name_directory}"
  }
}