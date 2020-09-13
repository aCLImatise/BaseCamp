version 1.0

task Extractbadreads {
  input {
    Boolean? extract_reads_instead
    Boolean? arg_maximal_internal
    Boolean? arg_number_threads
    Boolean? arg_minimum_internal
    Boolean? arg_maximum_internal
    Boolean? arg_minimum_mapping
    Boolean? arg_maximum_allowed
    Boolean? arg_filename_write
    Boolean? arg_length_prefixsuffix
    Boolean? encode_read_groups
    Boolean? arg_distribute_output
    Boolean? also_use_clipped
    String ones_dot
  }
  command <<<
    extract_bad_reads \
      ~{ones_dot} \
      ~{if (extract_reads_instead) then "-a" else ""} \
      ~{if (arg_maximal_internal) then "-s" else ""} \
      ~{if (arg_number_threads) then "-T" else ""} \
      ~{if (arg_minimum_internal) then "-m" else ""} \
      ~{if (arg_maximum_internal) then "-M" else ""} \
      ~{if (arg_minimum_mapping) then "-Q" else ""} \
      ~{if (arg_maximum_allowed) then "-e" else ""} \
      ~{if (arg_filename_write) then "-S" else ""} \
      ~{if (arg_length_prefixsuffix) then "-l" else ""} \
      ~{if (encode_read_groups) then "-r" else ""} \
      ~{if (arg_distribute_output) then "-D" else ""} \
      ~{if (also_use_clipped) then "-H" else ""}
  >>>
  parameter_meta {
    extract_reads_instead: "[ --all ]                        Extract all reads instead of only \\\"bad\\\""
    arg_maximal_internal: "[ --max_span ] arg (=50000)      Maximal internal segment. Read pairs with\\nlarger internal segment will be ignored."
    arg_number_threads: "[ --threads ] arg (=0)           Number of threads (default: 0 = strictly\\nsingle-threaded)."
    arg_minimum_internal: "[ --min_insert_size ] arg (=-1)  Minimum internal segment size (excluding\\nreads) for a pair to be considered good\\n(and thus not be extracted)."
    arg_maximum_internal: "[ --max_insert_size ] arg (=-1)  Maximum internal segment size (excluding\\nreads) for a pair to be considered good\\n(and thus not be extracted)."
    arg_minimum_mapping: "[ --min_mapq ] arg (=30)         Minimum mapping quality for good reads\\n(which are not to be extracted)."
    arg_maximum_allowed: "[ --max_edit_distance ] arg (=3) Maximum allowed edit distance, reads with\\nlarger distance will be extracted."
    arg_filename_write: "[ --split_file ] arg             Filename to write (gzipped) split reads\\nto (FASTQ format)."
    arg_length_prefixsuffix: "[ --split_length ] arg (=35)     Length of prefix/suffix to be extracted\\n(if option -S is used)."
    encode_read_groups: "[ --read_groups ]                Encode read groups in read_names (as\\n\\\"<readgroup>_<name>\\\")."
    arg_distribute_output: "[ --distribute_output ] arg (=0) Distribute output over multiple files\\naccording to [off|readgroup|sample]."
    also_use_clipped: "[ --use_hard_clipped ]           Also use hard clipped reads (default:\\nignore hard clipped reads).\\n"
    ones_dot: "-u [ --unsorted ]                   Input is not sorted by position but "
  }
  output {
    File out_stdout = stdout()
  }
}