version 1.0

task AlfredConsensus {
  input {
    Boolean? f
    Boolean? arg_fraction_reads
    Boolean? arg_min_mapping
    Boolean? arg_chr_position
    Boolean? arg_window_fetch
    Boolean? consider_secondary_alignments
    Boolean? trim_reads_window
    Boolean? arg_gap_open
    Boolean? arg_gap_extension
    Boolean? _arg_match
    Boolean? _arg_mismatch
    Boolean? u
    Boolean? arg_verticalhorizontal_alignment
    Boolean? _arg_consensus
    String consensus
  }
  command <<<
    alfred consensus \
      ~{consensus} \
      ~{if (f) then "-f" else ""} \
      ~{if (arg_fraction_reads) then "-d" else ""} \
      ~{if (arg_min_mapping) then "-q" else ""} \
      ~{if (arg_chr_position) then "-p" else ""} \
      ~{if (arg_window_fetch) then "-w" else ""} \
      ~{if (consider_secondary_alignments) then "-s" else ""} \
      ~{if (trim_reads_window) then "-r" else ""} \
      ~{if (arg_gap_open) then "-g" else ""} \
      ~{if (arg_gap_extension) then "-e" else ""} \
      ~{if (_arg_match) then "-m" else ""} \
      ~{if (_arg_mismatch) then "-n" else ""} \
      ~{if (u) then "-u" else ""} \
      ~{if (arg_verticalhorizontal_alignment) then "-a" else ""} \
      ~{if (_arg_consensus) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    f: "[ --format ] arg (=bam)            input format [bam|fasta]"
    arg_fraction_reads: "[ --called ] arg (=0.5)            fraction of reads required for"
    arg_min_mapping: "[ --mapqual ] arg (=10)            min. mapping quality"
    arg_chr_position: "[ --position ] arg (=chr4:500500)  position to generate consensus"
    arg_window_fetch: "[ --window ] arg (=5)              window around position to fetch reads"
    consider_secondary_alignments: "[ --secondary ]                    consider secondary alignments"
    trim_reads_window: "[ --trimreads ]                    trim reads to window"
    arg_gap_open: "[ --gapopen ] arg (=-10)           gap open"
    arg_gap_extension: "[ --gapext ] arg (=-1)             gap extension"
    _arg_match: "[ --match ] arg (=5)               match"
    _arg_mismatch: "[ --mismatch ] arg (=-4)           mismatch"
    u: "[ --outformat ] arg (=v)           output format [v|h]"
    arg_verticalhorizontal_alignment: "[ --alignment ] arg (=\\\"al.fa.gz\\\")  vertical/horizontal alignment"
    _arg_consensus: "[ --consensus ] arg (=\\\"cs.fa.gz\\\")  consensus"
    consensus: "-t [ --seqtype ] arg (=ill)           seq. type [ill|ont|pacbio|custom]"
  }
  output {
    File out_stdout = stdout()
  }
}