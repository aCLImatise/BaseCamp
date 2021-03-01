version 1.0

task GetEmmSequenceType {
  input {
    Int? species_mlst_scheme
    Int? number_of_threads
    File? output_fasta_file
    File? output_phylip_file
    Directory? output_directory
    Boolean? print_available_schemes
    Boolean? print_version_number
  }
  command <<<
    get_emm_sequence_type \
      ~{if defined(species_mlst_scheme) then ("-s " +  '"' + species_mlst_scheme + '"') else ""} \
      ~{if defined(number_of_threads) then ("-d " +  '"' + number_of_threads + '"') else ""} \
      ~{if (output_fasta_file) then "-c" else ""} \
      ~{if (output_phylip_file) then "-y" else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (print_available_schemes) then "-a" else ""} \
      ~{if (print_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    species_mlst_scheme: "Species of MLST scheme (0 or more comma separated)"
    number_of_threads: "Number of threads [1]"
    output_fasta_file: "Output a FASTA file of concatenated alleles and unknown sequences"
    output_phylip_file: "Output a phylip file of concatenated alleles and unknown sequences"
    output_directory: "Output directory [.]"
    print_available_schemes: "Print out all available MLST schemes and exit"
    print_version_number: "Print version number and exit"
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
    File out_output_phylip_file = "${in_output_phylip_file}"
    Directory out_output_directory = "${in_output_directory}"
  }
}