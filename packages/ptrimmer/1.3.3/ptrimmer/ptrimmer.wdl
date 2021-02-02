version 1.0

task Ptrimmer {
  input {
    Boolean? keep
    Boolean? seqtype
    Boolean? amp_file
    Boolean? read_one
    Boolean? trim_one
    Boolean? read_two
    Boolean? trim_two
    Boolean? summary
    Boolean? min_qual
    Boolean? km_er
    Boolean? mismatch
    Float one_dot_three_dot_three
  }
  command <<<
    ptrimmer \
      ~{one_dot_three_dot_three} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (seqtype) then "--seqtype" else ""} \
      ~{if (amp_file) then "--ampfile" else ""} \
      ~{if (read_one) then "--read1" else ""} \
      ~{if (trim_one) then "--trim1" else ""} \
      ~{if (read_two) then "--read2" else ""} \
      ~{if (trim_two) then "--trim2" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (min_qual) then "--minqual" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (mismatch) then "--mismatch" else ""}
  >>>
  parameter_meta {
    keep: "keep the complete reads if failed to locate primer\\nsequence [default: discard the reads]"
    seqtype: "[required] the sequencing type [single|pair]"
    amp_file: "[required] input amplicon file [.txt]"
    read_one: "[required] read1(forward) for fastq file [.fq|.gz]"
    trim_one: "[required] the trimed read1 of fastq file"
    read_two: "[optional] read2(reverse) for fastq file (paired-end seqtype) [.fq|.gz]"
    trim_two: "[optional] the trimed read2 of fastq file (paired-end seqtype)"
    summary: "[optional] the trimming information of each amplicon [default: Summary.ampcount]"
    min_qual: "[optional] the minimum average quality to keep after triming [20]"
    km_er: "[optional] the kmer lenght for indexing [8]"
    mismatch: "[optional] the maxmum mismatch for primer seq [3]"
    one_dot_three_dot_three: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}