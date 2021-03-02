version 1.0

task OverlapInCore {
  input {
    File? contig_mode_specify
    Boolean? contig_mode_stores
    Boolean? do_partial_overlaps
    String? specify_fragments_put
    Boolean? designate_file_limit
    Boolean? one_two_digits
    Boolean? specify_maximum_number
    Boolean? allow_multiple_overlaps
    Boolean? specify_memory_size
    File? specify_output_name
    Boolean? write_protoio_output
    String? specify_old_fragments
    Boolean? ignore_screen_information
    String? use_parallel_threads
    Boolean? allow_only_overlap
    String? only_output_overlaps
    Boolean? filter_overlaps_too
    Boolean? ignore_clear_ranges
    Boolean? skip_hopeless_check
    String? hash_bits
    String? hash_strings
    String? hash_datalen
    Float? hash_load
    Int? max_read_len
    Int? reads_per_batch
    String? reads_per_thread
    String gkp_storepath
  }
  command <<<
    overlapInCore \
      ~{gkp_storepath} \
      ~{if defined(contig_mode_specify) then ("-b " +  '"' + contig_mode_specify + '"') else ""} \
      ~{if (contig_mode_stores) then "-c" else ""} \
      ~{if (do_partial_overlaps) then "-G" else ""} \
      ~{if defined(specify_fragments_put) then ("-h " +  '"' + specify_fragments_put + '"') else ""} \
      ~{if (designate_file_limit) then "-I" else ""} \
      ~{if (one_two_digits) then "-k" else ""} \
      ~{if (specify_maximum_number) then "-l" else ""} \
      ~{if (allow_multiple_overlaps) then "-m" else ""} \
      ~{if (specify_memory_size) then "-M" else ""} \
      ~{if (specify_output_name) then "-o" else ""} \
      ~{if (write_protoio_output) then "-P" else ""} \
      ~{if defined(specify_old_fragments) then ("-r " +  '"' + specify_old_fragments + '"') else ""} \
      ~{if (ignore_screen_information) then "-s" else ""} \
      ~{if defined(use_parallel_threads) then ("-t " +  '"' + use_parallel_threads + '"') else ""} \
      ~{if (allow_only_overlap) then "-u" else ""} \
      ~{if defined(only_output_overlaps) then ("-v " +  '"' + only_output_overlaps + '"') else ""} \
      ~{if (filter_overlaps_too) then "-w" else ""} \
      ~{if (ignore_clear_ranges) then "-x" else ""} \
      ~{if (skip_hopeless_check) then "-z" else ""} \
      ~{if defined(hash_bits) then ("--hashbits " +  '"' + hash_bits + '"') else ""} \
      ~{if defined(hash_strings) then ("--hashstrings " +  '"' + hash_strings + '"') else ""} \
      ~{if defined(hash_datalen) then ("--hashdatalen " +  '"' + hash_datalen + '"') else ""} \
      ~{if defined(hash_load) then ("--hashload " +  '"' + hash_load + '"') else ""} \
      ~{if defined(max_read_len) then ("--maxreadlen " +  '"' + max_read_len + '"') else ""} \
      ~{if defined(reads_per_batch) then ("--readsperbatch " +  '"' + reads_per_batch + '"') else ""} \
      ~{if defined(reads_per_thread) then ("--readsperthread " +  '"' + reads_per_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_mode_specify: "in contig mode, specify the output file"
    contig_mode_stores: "contig mode.  Use 2 frag stores.  First is\\nfor reads; second is for contigs"
    do_partial_overlaps: "do partial overlaps"
    specify_fragments_put: "to specify fragments to put in hash table\\nImplies LSF mode (no changes to frag store)"
    designate_file_limit: "designate a file of frag iids to limit olaps to\\n(Contig mode only)"
    one_two_digits: "if one or two digits, the length of a kmer, otherwise\\nthe filename containing a list of kmers to ignore in\\nthe hash table"
    specify_maximum_number: "specify the maximum number of overlaps per\\nfragment-end per batch of fragments."
    allow_multiple_overlaps: "allow multiple overlaps per oriented fragment pair"
    specify_memory_size: "specify memory size.  Valid values are '8GB', '4GB',\\n'2GB', '1GB', '256MB'.  (Not for Contig mode)"
    specify_output_name: "specify output file name"
    write_protoio_output: "write protoIO output (if not -G)"
    specify_old_fragments: "specify old fragments to overlap"
    ignore_screen_information: "ignore screen information with fragments"
    use_parallel_threads: "use <n> parallel threads"
    allow_only_overlap: "allow only 1 overlap per oriented fragment pair"
    only_output_overlaps: "only output overlaps of <n> or more bases"
    filter_overlaps_too: "filter out overlaps with too many errors in a window"
    ignore_clear_ranges: "ignore the clear ranges on reads and use the\\nfull sequence"
    skip_hopeless_check: "skip the hopeless check"
    hash_bits: "Use n bits for the hash mask."
    hash_strings: "Load at most n strings into the hash table at one time."
    hash_datalen: "Load at most n bytes into the hash table at one time."
    hash_load: "Load to at most 0.0 < f < 1.0 capacity (default 0.7)."
    max_read_len: "For batches with all short reads, pack bits differently to\\nprocess more reads per batch.\\nall reads must be shorter than n\\n--hashstrings limited to 2^(30-m)\\nCommon values:\\nmaxreadlen 2048 -> hashstrings  524288 (default)\\nmaxreadlen  512 -> hashstrings 2097152\\nmaxreadlen  128 -> hashstrings 8388608"
    reads_per_batch: "Force batch size to n."
    reads_per_thread: "Force each thread to process n reads."
    gkp_storepath: ""
  }
  output {
    File out_stdout = stdout()
    File out_contig_mode_specify = "${in_contig_mode_specify}"
    File out_specify_output_name = "${in_specify_output_name}"
  }
}