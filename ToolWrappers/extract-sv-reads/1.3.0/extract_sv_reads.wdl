version 1.0

task Extractsvreads {
  input {
    File? only_useful_when
    Boolean? _output_version
    Boolean? arg_input_bamcramsam
    File? arg_output_split
    File? arg_output_discordant
    Boolean? exclude_duplicate_reads
    Boolean? remove_sequences_qualities
    Int? max_unmapped_bases
    Int? min_in_del_size
    Int? min_non_overlap
    Int? threads
    String bams
  }
  command <<<
    extract_sv_reads \
      ~{bams} \
      ~{if defined(only_useful_when) then ("-T " +  '"' + only_useful_when + '"') else ""} \
      ~{if (_output_version) then "-v" else ""} \
      ~{if (arg_input_bamcramsam) then "-i" else ""} \
      ~{if (arg_output_split) then "-s" else ""} \
      ~{if (arg_output_discordant) then "-d" else ""} \
      ~{if (exclude_duplicate_reads) then "-e" else ""} \
      ~{if (remove_sequences_qualities) then "-r" else ""} \
      ~{if defined(max_unmapped_bases) then ("--max-unmapped-bases " +  '"' + max_unmapped_bases + '"') else ""} \
      ~{if defined(min_in_del_size) then ("--min-indel-size " +  '"' + min_in_del_size + '"') else ""} \
      ~{if defined(min_non_overlap) then ("--min-non-overlap " +  '"' + min_non_overlap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    only_useful_when: "only useful when the input file is a CRAM."
    _output_version: "[ --version ]               output the version"
    arg_input_bamcramsam: "[ --input ] arg (=-)        input BAM/CRAM/SAM. Use '-' for stdin if using\\npositional arguments"
    arg_output_split: "[ --splitter ] arg          output split reads to this file in BAM format\\n(Required)"
    arg_output_discordant: "[ --discordant ] arg        output discordant reads to this file in BAM\\nformat (Required)"
    exclude_duplicate_reads: "[ --exclude-dups ]          exclude duplicate reads from output"
    remove_sequences_qualities: "[ --reduce-output-bams ]    remove sequences and qualities from output"
    max_unmapped_bases: "(=50) maximum number of unaligned bases between two\\nalignments to be included in the splitter file"
    min_in_del_size: "(=50)     minimum structural variant feature size for\\nsplit alignments to be included in the\\nsplitter file"
    min_non_overlap: "(=20)    minimum number of non-overlapping base pairs\\nbetween two alignments for a read to be\\nincluded in the splitter file"
    threads: "(=1)             number of threads to use"
    bams: "-n [ --with-nm ]               ensure NM tag is present in output if reading "
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_split = "${in_arg_output_split}"
    File out_arg_output_discordant = "${in_arg_output_discordant}"
  }
}