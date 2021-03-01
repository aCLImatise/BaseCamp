version 1.0

task UnicyclerScrub {
  input {
    String? reads_assembly_scrubbed
    File? out
    File? reads
    Int? trim
    Int? split
    Int? min_split_size
    Boolean? discard_chimeras
    Int? threads
    Boolean? keep_paf
    String? parameters
    Int? verbosity
  }
  command <<<
    unicycler_scrub \
      ~{if defined(reads_assembly_scrubbed) then ("--input " +  '"' + reads_assembly_scrubbed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(min_split_size) then ("--min_split_size " +  '"' + min_split_size + '"') else ""} \
      ~{if (discard_chimeras) then "--discard_chimeras" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (keep_paf) then "--keep_paf" else ""} \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads_assembly_scrubbed: "These are the reads or assembly to be scrubbed (can\\nbe FASTA or FASTQ format"
    out: "The scrubbed reads or assembly will be saved to this\\nfile (will have the same format as the --input file\\nformat) or use \\\"none\\\" to not produce an output file"
    reads: "These are the reads used to scrub --input (can be\\nFASTA or FASTQ format) (default: same file as\\n--input)"
    trim: "The aggressiveness with which the input will be\\ntrimmed (0 to 100, where 0 is no trimming and 100 is\\nvery aggressive trimming) (default: 50)"
    split: "The aggressiveness with which the input will be\\nsplit (0 to 100, where 0 is no splitting and 100 is\\nvery aggressive splitting) (default: 50)"
    min_split_size: "Parts of split sequences will only be outputted if\\nthey are at least this big (default: 1000)"
    discard_chimeras: "If used, chimeric sequences will be discarded\\ninstead of split (default: False)"
    threads: "Number of threads used (default: 8)"
    keep_paf: "Save the alignments to file (makes repeated runs\\nfaster because alignments can be loaded from file)\\n(default: False)"
    parameters: "Low-level parameters (for debugging use only)\\n(default: )"
    verbosity: "Level of stdout information (default: 1)\\n0 = no stdout, 1 = basic progress indicators,\\n2 = extra info, 3 = debugging info\\n"
  }
  output {
    File out_stdout = stdout()
  }
}