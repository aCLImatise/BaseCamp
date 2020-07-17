version 1.0

task AlfredConsensus {
  input {
    Boolean? f
    Boolean? arg__fraction
    Boolean? t
    Boolean? arg_min_quality
    Boolean? arg_chr_position
    Boolean? arg_window_position
    Boolean? consider_secondary_alignments
    Boolean? trim_reads_window
    Boolean? arg_gap_open
    Boolean? arg_gap_extension
    Boolean? _arg_match
    Boolean? _arg_mismatch
    Boolean? u
    Boolean? arg_verticalhorizontal_alignment
    Boolean? _arg_consensus
    String input_dot_bam_vertical_line_input_dot_fado_tgz
  }
  command <<<
    alfred consensus \
      ~{input_dot_bam_vertical_line_input_dot_fado_tgz} \
      ~{true="-f" false="" f} \
      ~{true="-d" false="" arg__fraction} \
      ~{true="-t" false="" t} \
      ~{true="-q" false="" arg_min_quality} \
      ~{true="-p" false="" arg_chr_position} \
      ~{true="-w" false="" arg_window_position} \
      ~{true="-s" false="" consider_secondary_alignments} \
      ~{true="-r" false="" trim_reads_window} \
      ~{true="-g" false="" arg_gap_open} \
      ~{true="-e" false="" arg_gap_extension} \
      ~{true="-m" false="" _arg_match} \
      ~{true="-n" false="" _arg_mismatch} \
      ~{true="-u" false="" u} \
      ~{true="-a" false="" arg_verticalhorizontal_alignment} \
      ~{true="-c" false="" _arg_consensus}
  >>>
  parameter_meta {
    f: "[ --format ] arg (=bam)            input format [bam|fasta]"
    arg__fraction: "[ --called ] arg (=0.5)            fraction of reads required for  consensus"
    t: "[ --seqtype ] arg (=ill)           seq. type [ill|ont|pacbio|custom]"
    arg_min_quality: "[ --mapqual ] arg (=10)            min. mapping quality"
    arg_chr_position: "[ --position ] arg (=chr4:500500)  position to generate consensus"
    arg_window_position: "[ --window ] arg (=5)              window around position to fetch reads"
    consider_secondary_alignments: "[ --secondary ]                    consider secondary alignments"
    trim_reads_window: "[ --trimreads ]                    trim reads to window"
    arg_gap_open: "[ --gapopen ] arg (=-10)           gap open"
    arg_gap_extension: "[ --gapext ] arg (=-1)             gap extension"
    _arg_match: "[ --match ] arg (=5)               match"
    _arg_mismatch: "[ --mismatch ] arg (=-4)           mismatch"
    u: "[ --outformat ] arg (=v)           output format [v|h]"
    arg_verticalhorizontal_alignment: "[ --alignment ] arg (=\"al.fa.gz\")  vertical/horizontal alignment"
    _arg_consensus: "[ --consensus ] arg (=\"cs.fa.gz\")  consensus"
    input_dot_bam_vertical_line_input_dot_fado_tgz: ""
  }
}