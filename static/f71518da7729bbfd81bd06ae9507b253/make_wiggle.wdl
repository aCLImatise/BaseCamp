version 1.0

task MakeWiggle {
  input {
    File? out
    Int? window_size
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    Boolean? normalize
    String? sum
    Int? min_length
    Int? max_length
    Int? maxmem
    Boolean? big_genome
    Boolean? five_prime_variable
    Boolean? five_prime
    Boolean? three_prime
    Boolean? center
    Int? offset
    Int? nibble
    String? color
    String? track_name
    File? output_format
    String out_base_fw_do_twig
    String out_base_rc_do_twig
  }
  command <<<
    make_wiggle \
      ~{out_base_fw_do_twig} \
      ~{out_base_rc_do_twig} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{if (big_genome) then "--big_genome" else ""} \
      ~{if (five_prime_variable) then "--fiveprime_variable" else ""} \
      ~{if (five_prime) then "--fiveprime" else ""} \
      ~{if (three_prime) then "--threeprime" else ""} \
      ~{if (center) then "--center" else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(nibble) then ("--nibble " +  '"' + nibble + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(track_name) then ("--track_name " +  '"' + track_name + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Base name for output files"
    window_size: "Size of nucleotides to fetch at once for export. Large\\nvalues are faster but require more memory (Default:\\n100000)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single\\nsample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts\\n(Default: BAM)"
    normalize: "Whether counts should be normalized to counts per\\nmillion (usually not. default: False)"
    sum: "Sum used in normalization of counts and RPKM/RPNT\\ncalculations (Default: total mapped reads/counts in\\ndataset)"
    min_length: "Minimum read length required to be included (BAM &\\nbowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM &\\nbowtie files only. Default: 100)"
    maxmem: "Maximum desired memory footprint in MB to devote to\\nBigBed/BigWig files. May be exceeded by large queries.\\n(Default: 0, No maximum)"
    big_genome: "Use slower but memory-efficient implementation for big\\ngenomes or for memory-limited computers. For wiggle &\\nbowtie files only."
    five_prime_variable: "Map read alignment to a variable offset from 5'\\nposition of read, with offset determined by read\\nlength. Requires `--offset` below"
    five_prime: "Map read alignment to 5' position."
    three_prime: "Map read alignment to 3' position"
    center: "Subtract N positions from each end of read, and add\\n1/(length-N), to each remaining position, where N is\\nspecified by `--nibble`"
    offset: "For `--fiveprime` or `--threeprime`, provide an\\ninteger representing the offset into the read,\\nstarting from either the 5' or 3' end, at which data\\nshould be plotted. For `--fiveprime_variable`, provide\\nthe filename of a two-column tab-delimited text file,\\nin which first column represents read length or the\\nspecial keyword `'default'`, and the second column\\nrepresents the offset from the five prime end of that\\nread length at which the read should be mapped.\\n(Default: 0)"
    nibble: "For use with `--center` only. nt to remove from each\\nend of read before mapping (Default: 0)"
    color: "An RGB hex string (`'#NNNNNN'`, `N` in `[0-9,A-F]`)\\nspecifying the track color."
    track_name: "Name to give browser track"
    output_format: "Format of output file (Default: bedgraph)\\n"
    out_base_fw_do_twig: "Counts at each position for the plus/forward strand of each chromosome"
    out_base_rc_do_twig: "Counts at each position for the minus/reverse strand of each chromosome"
  }
  output {
    File out_stdout = stdout()
    File out_output_format = "${in_output_format}"
  }
}