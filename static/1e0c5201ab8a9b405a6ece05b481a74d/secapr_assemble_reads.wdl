version 1.0

task SecaprAssembleReads {
  input {
    Directory? call_folder_contains
    Directory? output_directory_saved
    String? assembler
    String? km_er
    Int? contig_length
    Int? max_memory
    Boolean? single_reads
    Boolean? disable_stats
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
      ~{if (disable_stats) then "--disable_stats" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    call_folder_contains: "Call the folder that contains the trimmed reads,\\norganized in a separate subfolder for each sample. The\\nname of the subfolder has to start with the sample\\nname, delimited with an underscore [_]"
    output_directory_saved: "The output directory where results will be saved"
    assembler: "The assembler to use (default = abyss)."
    km_er: "Set the kmer value"
    contig_length: "Set the minimum contig length for the assembly.\\nContigs that are shorter than this threshold will be\\ndiscarded."
    max_memory: "[Option only for Trinity assembler] Set the maximum\\nmemory for Trinity to use in this format: 1G or 1000M\\n(default: 8G)."
    single_reads: "Use this flag if you additionally want to use single\\nreads for the assembly"
    disable_stats: "Use this flag if you want to disabel generation of\\nstats (can be necessary because previous stats files\\ncan't be found if reads are used that were not\\npreviously processed with SECAPR)"
    cores: "For parallel processing you can set the number of\\ncores you want to run the assembly on.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_saved = "${in_output_directory_saved}"
  }
}