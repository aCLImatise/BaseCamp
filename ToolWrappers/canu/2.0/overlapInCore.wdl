version 1.0

task OverlapInCore {
  input {
    File? contig_mode_specify
    Boolean? contig_mode_use
    Boolean? partial
    String? specify_fragments_put
    Boolean? designate_file_limit
    Boolean? one_two_digits
    Boolean? specify_maximum_number
    Boolean? allow_multiple_overlaps
    Boolean? specify_memory_size
    File? specify_output_file
    Boolean? write_protoio_output
    String? specify_old_fragments
    String? use_parallel_threads
    Boolean? allow_only_overlap
    Boolean? skip_check_skipped
    Float? max_erate
    String? minlength
    String? hash_bits
    String? hash_datalen
    Float? hash_load
    Int? reads_per_batch
    String? reads_per_thread
    String seq_storepath
  }
  command <<<
    overlapInCore \
      ~{seq_storepath} \
      ~{if defined(contig_mode_specify) then ("-b " +  '"' + contig_mode_specify + '"') else ""} \
      ~{if (contig_mode_use) then "-c" else ""} \
      ~{if (partial) then "-partial" else ""} \
      ~{if defined(specify_fragments_put) then ("-h " +  '"' + specify_fragments_put + '"') else ""} \
      ~{if (designate_file_limit) then "-I" else ""} \
      ~{if (one_two_digits) then "-k" else ""} \
      ~{if (specify_maximum_number) then "-l" else ""} \
      ~{if (allow_multiple_overlaps) then "-m" else ""} \
      ~{if (specify_memory_size) then "-M" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (write_protoio_output) then "-P" else ""} \
      ~{if defined(specify_old_fragments) then ("-r " +  '"' + specify_old_fragments + '"') else ""} \
      ~{if defined(use_parallel_threads) then ("-t " +  '"' + use_parallel_threads + '"') else ""} \
      ~{if (allow_only_overlap) then "-u" else ""} \
      ~{if (skip_check_skipped) then "-z" else ""} \
      ~{if defined(max_erate) then ("--maxerate " +  '"' + max_erate + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(hash_bits) then ("--hashbits " +  '"' + hash_bits + '"') else ""} \
      ~{if defined(hash_datalen) then ("--hashdatalen " +  '"' + hash_datalen + '"') else ""} \
      ~{if defined(hash_load) then ("--hashload " +  '"' + hash_load + '"') else ""} \
      ~{if defined(reads_per_batch) then ("--readsperbatch " +  '"' + reads_per_batch + '"') else ""} \
      ~{if defined(reads_per_thread) then ("--readsperthread " +  '"' + reads_per_thread + '"') else ""}
  >>>
  parameter_meta {
    contig_mode_specify: "in contig mode, specify the output file"
    contig_mode_use: "contig mode.  Use 2 frag stores.  First is\\nfor reads; second is for contigs"
    partial: "do partial overlaps"
    specify_fragments_put: "to specify fragments to put in hash table\\nImplies LSF mode (no changes to frag store)"
    designate_file_limit: "designate a file of frag iids to limit olaps to\\n(Contig mode only)"
    one_two_digits: "if one or two digits, the length of a kmer, otherwise\\nthe filename containing a list of kmers to ignore in\\nthe hash table"
    specify_maximum_number: "specify the maximum number of overlaps per\\nfragment-end per batch of fragments."
    allow_multiple_overlaps: "allow multiple overlaps per oriented fragment pair"
    specify_memory_size: "specify memory size.  Valid values are '8GB', '4GB',\\n'2GB', '1GB', '256MB'.  (Not for Contig mode)"
    specify_output_file: "specify output file name"
    write_protoio_output: "write protoIO output (if not -partial)"
    specify_old_fragments: "specify old fragments to overlap"
    use_parallel_threads: "use <n> parallel threads"
    allow_only_overlap: "allow only 1 overlap per oriented fragment pair"
    skip_check_skipped: "skip the hopeless check (also skipped at > 0.06)"
    max_erate: "only output overlaps with fraction <n> or less error (e.g., 0.06 == 6%)"
    minlength: "only output overlaps of <n> or more bases"
    hash_bits: "Use n bits for the hash mask."
    hash_datalen: "Load at most n bytes into the hash table at one time."
    hash_load: "Load to at most 0.0 < f < 1.0 capacity (default 0.7)."
    reads_per_batch: "Force batch size to n."
    reads_per_thread: "Force each thread to process n reads."
    seq_storepath: ""
  }
  output {
    File out_stdout = stdout()
    File out_contig_mode_specify = "${in_contig_mode_specify}"
    File out_specify_output_file = "${in_specify_output_file}"
  }
}