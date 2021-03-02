version 1.0

task TrimFastqpl {
  input {
    Boolean? fast_q
    Boolean? up
    Boolean? down
    Boolean? a_five
    Boolean? man
  }
  command <<<
    trim_fastq_pl \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (up) then "--up" else ""} \
      ~{if (down) then "--down" else ""} \
      ~{if (a_five) then "--a5" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Fastq file for trimming"
    up: "Number of nucleotides to trim from read / quality string start"
    down: "Number of nucleotides to trim from read / quality string end"
    a_five: "Sequence of 5' adapter to trim from the left side of the reads. This\\noption and -u / -d are mutually exclusive"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
  }
}