version 1.0

task SecaprAssembleReads {
  input {
    Directory? call_folder_contains
    Directory? output_directory_saved
    String? assembler
    Int? km_er
    Int? contig_length
    Int? max_memory
    Boolean? single_reads
    Int? cores
  }
  command <<<
    secapr assemble_reads \
      ~{if defined(call_folder_contains) then ("--input " +  '"' + call_folder_contains + '"') else ""} \
      ~{if defined(output_directory_saved) then ("--output " +  '"' + output_directory_saved + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(contig_length) then ("--contig_length " +  '"' + contig_length + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if (single_reads) then "--single_reads" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    call_folder_contains: "Call the folder that contains the trimmed reads,\\norganized in a separate subfolder for each sample. The\\nname of the subfolder has to start with the sample\\nname, delimited with an underscore [_] (default output\\nof secapr clean_reads function)"
    output_directory_saved: "The output directory where results will be saved"
    assembler: "The assembler to use (default = spades)."
    km_er: "Set the kmer value (only available for Abyss and\\nSpades). Provide single value for Abyss, or list of\\nkmers for Spades, e.g. \\\"--kmer 21,33,55\\\". Default for\\nAbyss is 35, and for spades it is 21,33,55,77,99,127.\\nNote that Spades only accepts uneven kmer values."
    contig_length: "Set the minimum contig length for the assembly.\\nContigs that are shorter than this threshold will be\\ndiscarded."
    max_memory: "Set the maximum memory to be used during assembly in\\nGB (only available for Spades). This can be necessary\\nwhen working with computing nodes with limited memory\\nor to avoid over-allocation of computing resources on\\nclusters which can in some cases cause your assembly\\nto be stopped or interrupted."
    single_reads: "Use this flag if you additionally want to use single\\nreads for the assembly"
    cores: "For parallel processing you can set the number of\\ncores you want to run the assembly on.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_call_folder_contains = "${in_call_folder_contains}"
    Directory out_output_directory_saved = "${in_output_directory_saved}"
  }
}