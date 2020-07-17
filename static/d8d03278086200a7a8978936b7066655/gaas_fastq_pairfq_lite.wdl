version 1.0

task GaasFastqPairfqLite.pl {
  input {
    Boolean? in_file
    Boolean? outfile
    Boolean? forward
    Boolean? reverse
    Boolean? for_w_paired
    Boolean? rev_paired
    Boolean? for_w_unpaired
    Boolean? rev_unpaired
    Boolean? pair_num
    Boolean? uppercase
    Boolean? stats
  }
  command <<<
    gaas_fastq_pairfq_lite.pl \
      ~{true="--infile" false="" in_file} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--forw_paired" false="" for_w_paired} \
      ~{true="--rev_paired" false="" rev_paired} \
      ~{true="--forw_unpaired" false="" for_w_unpaired} \
      ~{true="--rev_unpaired" false="" rev_unpaired} \
      ~{true="--pairnum" false="" pair_num} \
      ~{true="--uppercase" false="" uppercase} \
      ~{true="--stats" false="" stats}
  >>>
  parameter_meta {
    in_file: "For the 'addinfo' method, this would be any FASTA/Q file (or STDIN). For the 'splitpairs' method, this would be either the forward or reverse file from a paired-end sequencing run. For the 'makepairs' method, this would be the interleaved file of forward and reverse reads that has been trimmed."
    outfile: "The outfile for the 'addinfo' or 'joinpairs' methods (may be STDOUT instead of a file)."
    forward: "The file of forward sequences from an Illumina paired-end sequencing run."
    reverse: "The file of reverse sequences from an Illumina paired-end sequencing run."
    for_w_paired: "The output file to place the paired forward reads."
    rev_paired: "The output file to place the paired reverse reads."
    for_w_unpaired: "The output file to place the unpaired forward reads."
    rev_unpaired: "The output file to place the unpaired reverse reads."
    pair_num: "The pair number to add to the file with the 'addinfo' method. Should be either '1' or '2' and other arguments with generate an exception."
    uppercase: "For the 'addinfo' method, uppercase the sequence."
    stats: "For the 'makepairs' method, print (to STDOUT) statistics for paired/unpaired forward and reverse reads. This is useful for record keeping and debugging. The reason this is not the default is that people may want to run multiple instances of this command and redirect the output to the same file or to another program."
  }
}