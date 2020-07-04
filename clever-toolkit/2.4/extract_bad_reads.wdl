version 1.0

task ExtractBadReads {
  input {
    Boolean? extract_reads_instead
    Boolean? input_sorted_grouped
    Boolean? arg_maximal_internal
    Boolean? arg_number_default
    Boolean? arg_minimum_internal
    Boolean? arg_maximum_internal
    Boolean? arg_minimum_mapping
    Boolean? arg_maximum_allowed
    Boolean? arg_filename_write
    Boolean? arg_length_prefixsuffix
    Boolean? encode_read_groups
    Boolean? d
    Boolean? also_use_default
  }
  command <<<
    extract-bad-reads \
      ~{true="-a" false="" extract_reads_instead} \
      ~{true="-u" false="" input_sorted_grouped} \
      ~{true="-s" false="" arg_maximal_internal} \
      ~{true="-T" false="" arg_number_default} \
      ~{true="-m" false="" arg_minimum_internal} \
      ~{true="-M" false="" arg_maximum_internal} \
      ~{true="-Q" false="" arg_minimum_mapping} \
      ~{true="-e" false="" arg_maximum_allowed} \
      ~{true="-S" false="" arg_filename_write} \
      ~{true="-l" false="" arg_length_prefixsuffix} \
      ~{true="-r" false="" encode_read_groups} \
      ~{true="-D" false="" d} \
      ~{true="-H" false="" also_use_default}
  >>>
  parameter_meta {
    extract_reads_instead: "[ --all ]                        Extract all reads instead of only \"bad\"  ones."
    input_sorted_grouped: "[ --unsorted ]                   Input is not sorted by position but  grouped by readname, i.e., all alignments of a read pair are in subsequent lines."
    arg_maximal_internal: "[ --max_span ] arg (=50000)      Maximal internal segment. Read pairs with larger internal segment will be ignored."
    arg_number_default: "[ --threads ] arg (=0)           Number of threads (default: 0 = strictly  single-threaded)."
    arg_minimum_internal: "[ --min_insert_size ] arg (=-1)  Minimum internal segment size (excluding  reads) for a pair to be considered good  (and thus not be extracted)."
    arg_maximum_internal: "[ --max_insert_size ] arg (=-1)  Maximum internal segment size (excluding  reads) for a pair to be considered good  (and thus not be extracted)."
    arg_minimum_mapping: "[ --min_mapq ] arg (=30)         Minimum mapping quality for good reads  (which are not to be extracted)."
    arg_maximum_allowed: "[ --max_edit_distance ] arg (=3) Maximum allowed edit distance, reads with larger distance will be extracted."
    arg_filename_write: "[ --split_file ] arg             Filename to write (gzipped) split reads  to (FASTQ format)."
    arg_length_prefixsuffix: "[ --split_length ] arg (=35)     Length of prefix/suffix to be extracted  (if option -S is used)."
    encode_read_groups: "[ --read_groups ]                Encode read groups in read_names (as  \"<readgroup>_<name>\")."
    d: "[ --distribute_output ] arg (=0) Distribute output over multiple files  according to [off|readgroup|sample]."
    also_use_default: "[ --use_hard_clipped ]           Also use hard clipped reads (default:  ignore hard clipped reads)."
  }
}