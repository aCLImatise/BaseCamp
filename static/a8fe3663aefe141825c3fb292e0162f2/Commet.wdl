version 1.0

task Commet.py {
  input {
    Boolean? sge
    Boolean? one_vs_all
    Boolean? __binariesdirectory
    Boolean? _outputdirectory_directory
    String? kmer_size
    String? minimal_number_shared
    String? minimal_length_read
    String? maximal_number_ns
    String? minimal_shannon_index
    String? maximum_number_selected
    String input_file
  }
  command <<<
    Commet.py \
      ~{input_file} \
      ~{true="--sge" false="" sge} \
      ~{true="--one_vs_all" false="" one_vs_all} \
      ~{true="-b" false="" __binariesdirectory} \
      ~{true="-o" false="" _outputdirectory_directory} \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(minimal_number_shared) then ("-t " +  '"' + minimal_number_shared + '"') else ""} \
      ~{if defined(minimal_length_read) then ("-l " +  '"' + minimal_length_read + '"') else ""} \
      ~{if defined(maximal_number_ns) then ("-n " +  '"' + maximal_number_ns + '"') else ""} \
      ~{if defined(minimal_shannon_index) then ("-e " +  '"' + minimal_shannon_index + '"') else ""} \
      ~{if defined(maximum_number_selected) then ("-m " +  '"' + maximum_number_selected + '"') else ""}
  >>>
  parameter_meta {
    sge: "indicates the usage of SGE cluster commands"
    one_vs_all: "With this option the first set is then called \"first\" and is compared to all others. However, the other sets are not compared to each others. In this case, commet outputs the reads from first set in all others and vice versa, and it outputs two \"vector\" files instead of three matrice files. File called vector_plain.csv (resp vector_percentage) contains for each read set i, the number (resp. percentage) of reads from \"first\" in i \"/\" the number (resp. percentage) of reads from i in ref."
    __binariesdirectory: ", --binaries_directory "
    _outputdirectory_directory: ", --output_directory  directory in which results will be output [default: \"output_commet\"]"
    kmer_size: "kmer size [default: 33]"
    minimal_number_shared: "Minimal number of shared k-mers [default: 2]"
    minimal_length_read: "minimal length a read should have to be kept [default=k*t]"
    maximal_number_ns: "maximal number of Ns a read should contain to be kept. [default=any]"
    minimal_shannon_index: "minimal Shannon index a read should have to be kept. Float in [0,2]. [default=0]"
    maximum_number_selected: "maximum number of selected reads - This applies to a full set of reads. If a line of input_file is composed by 3 read files, and m=600, then the first 200 reads from each read file will be treated. [default=all]"
    input_file: "input file of files (a line=a set composed by: \"set_name:read_file;read_file;read_file...\")"
  }
}