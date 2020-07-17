version 1.0

task MmseqsExtractorfs {
  input {
    Boolean? min_length
    Boolean? max_length
    Boolean? max_gaps
    Boolean? contig_start_mode
    Boolean? contig_end_mode
    Boolean? orf_start_mode
    Boolean? forward_frames
    Boolean? reverse_frames
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs extractorfs \
      ~{true="--min-length" false="" min_length} \
      ~{true="--max-length" false="" max_length} \
      ~{true="--max-gaps" false="" max_gaps} \
      ~{true="--contig-start-mode" false="" contig_start_mode} \
      ~{true="--contig-end-mode" false="" contig_end_mode} \
      ~{true="--orf-start-mode" false="" orf_start_mode} \
      ~{true="--forward-frames" false="" forward_frames} \
      ~{true="--reverse-frames" false="" reverse_frames} \
      ~{true="--use-all-table-starts" false="" use_all_table_starts} \
      ~{true="--id-offset" false="" id_offset} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    min_length: "1               minimum codon number in open reading frames                 "
    max_length: "2147483647      maximum codon number in open reading frames                 "
    max_gaps: "2147483647      maximum number of codons with gaps or unknown residues before an open reading frame is rejected"
    contig_start_mode: "2               Contig start can be 0: incomplete, 1: complete, 2: both     "
    contig_end_mode: "2               Contig end can be 0: incomplete, 1: complete, 2: both       "
    orf_start_mode: "0               Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle)"
    forward_frames: "1,2,3           comma-seperated list of ORF frames on the forward strand to be extracted"
    reverse_frames: "1,2,3           comma-seperated list of ORF frames on the reverse strand to be extracted"
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value          "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}