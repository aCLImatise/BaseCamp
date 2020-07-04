version 1.0

task TrimFastq.pl {
  input {
    Boolean? fast_q
    Boolean? up
    Boolean? down
    Boolean? a_five
    Boolean? man
  }
  command <<<
    trim_fastq.pl \
      ~{true="--fastq" false="" fast_q} \
      ~{true="--up" false="" up} \
      ~{true="--down" false="" down} \
      ~{true="--a5" false="" a_five} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    fast_q: "Fastq file for trimming"
    up: "Number of nucleotides to trim from read / quality string start"
    down: "Number of nucleotides to trim from read / quality string end"
    a_five: "Sequence of 5' adapter to trim from the left side of the reads. This option and -u / -d are mutually exclusive"
    man: "Prints the manual page and exits"
  }
}