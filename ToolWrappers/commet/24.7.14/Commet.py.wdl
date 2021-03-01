version 1.0

task Commetpy {
  input {
    Boolean? sge
    Boolean? one_vs_all
    Directory? binaries_directory
    Int? kmer_size
    Int? minimal_number_shared
    Int? minimal_length_read
    Int? maximal_number_read
    Float? minimal_shannon_index
    Int? maximum_number_selected
  }
  command <<<
    Commet_py \
      ~{if (sge) then "--sge" else ""} \
      ~{if (one_vs_all) then "--one_vs_all" else ""} \
      ~{if (binaries_directory) then "--binaries_directory" else ""} \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(minimal_number_shared) then ("-t " +  '"' + minimal_number_shared + '"') else ""} \
      ~{if defined(minimal_length_read) then ("-l " +  '"' + minimal_length_read + '"') else ""} \
      ~{if defined(maximal_number_read) then ("-n " +  '"' + maximal_number_read + '"') else ""} \
      ~{if defined(minimal_shannon_index) then ("-e " +  '"' + minimal_shannon_index + '"') else ""} \
      ~{if defined(maximum_number_selected) then ("-m " +  '"' + maximum_number_selected + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sge: "indicates the usage of SGE cluster commands"
    one_vs_all: "With this option the first set is then called \\\"first\\\"\\nand is compared to all others. However, the other sets\\nare not compared to each others. In this case, commet\\noutputs the reads from first set in all others and\\nvice versa, and it outputs two \\\"vector\\\" files instead\\nof three matrice files. File called vector_plain.csv\\n(resp vector_percentage) contains for each read set i,\\nthe number (resp. percentage) of reads from \\\"first\\\" in\\ni \\\"/\\\" the number (resp. percentage) of reads from i in\\nref."
    binaries_directory: "directory in which results will be output [default:\\n\\\"output_commet\\\"]"
    kmer_size: "kmer size [default: 33]"
    minimal_number_shared: "Minimal number of shared k-mers [default: 2]"
    minimal_length_read: "minimal length a read should have to be kept\\n[default=k*t]"
    maximal_number_read: "maximal number of Ns a read should contain to be kept.\\n[default=any]"
    minimal_shannon_index: "minimal Shannon index a read should have to be kept.\\nFloat in [0,2]. [default=0]"
    maximum_number_selected: "maximum number of selected reads - This applies to a\\nfull set of reads. If a line of input_file is composed\\nby 3 read files, and m=600, then the first 200 reads\\nfrom each read file will be treated. [default=all]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_binaries_directory = "${in_binaries_directory}"
  }
}