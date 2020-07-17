version 1.0

task Kounta {
  input {
    Boolean? fof_n
    Boolean? km_er
    Boolean? min_freq
    Boolean? out
    Boolean? ram
    Boolean? tempdir
    Boolean? threads
  }
  command <<<
    kounta \
      ~{true="--fofn" false="" fof_n} \
      ~{true="--kmer" false="" km_er} \
      ~{true="--minfreq" false="" min_freq} \
      ~{true="--out" false="" out} \
      ~{true="--ram" false="" ram} \
      ~{true="--tempdir" false="" tempdir} \
      ~{true="--threads" false="" threads}
  >>>
  parameter_meta {
    fof_n: "file     File of filenames to process"
    km_er: "int      k-mer length [25]"
    min_freq: "int      Min k-mer frequency (FASTQ only) [3]"
    out: "file     Output matrix file"
    ram: "int      RAM in gigabytes to use [4]"
    tempdir: "string   Fast working directory [auto]"
    threads: "int      Threads to use [1]"
  }
}