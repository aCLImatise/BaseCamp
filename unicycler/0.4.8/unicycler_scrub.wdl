version 1.0

task UnicyclerScrub {
  input {
    String? reads_assembly_scrubbed
    String? out
    String? reads
    String? trim
    String? split
    Int? min_split_size
    Boolean? discard_chimeras
    String? threads
    Boolean? keep_paf
    String? parameters
    String? verbosity
  }
  command <<<
    unicycler_scrub \
      ~{if defined(reads_assembly_scrubbed) then ("--input " +  '"' + reads_assembly_scrubbed + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(min_split_size) then ("--min_split_size " +  '"' + min_split_size + '"') else ""} \
      ~{true="--discard_chimeras" false="" discard_chimeras} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--keep_paf" false="" keep_paf} \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    reads_assembly_scrubbed: "These are the reads or assembly to be scrubbed (can be FASTA or FASTQ format"
    out: "The scrubbed reads or assembly will be saved to this file (will have the same format as the --input file format) or use \"none\" to not produce an output file"
    reads: "These are the reads used to scrub --input (can be FASTA or FASTQ format) (default: same file as --input)"
    trim: "The aggressiveness with which the input will be trimmed (0 to 100, where 0 is no trimming and 100 is very aggressive trimming) (default: 50)"
    split: "The aggressiveness with which the input will be split (0 to 100, where 0 is no splitting and 100 is very aggressive splitting) (default: 50)"
    min_split_size: "Parts of split sequences will only be outputted if they are at least this big (default: 1000)"
    discard_chimeras: "If used, chimeric sequences will be discarded instead of split (default: False)"
    threads: "Number of threads used (default: 8)"
    keep_paf: "Save the alignments to file (makes repeated runs faster because alignments can be loaded from file) (default: False)"
    parameters: "Low-level parameters (for debugging use only) (default: )"
    verbosity: "Level of stdout information (default: 1) 0 = no stdout, 1 = basic progress indicators, 2 = extra info, 3 = debugging info"
  }
}