version 1.0

task Kounta {
  input {
    Boolean? fof_n
    Boolean? km_er
    Boolean? min_freq
    File? out
    Boolean? ram
    Boolean? tempdir
    Boolean? threads
  }
  command <<<
    kounta \
      ~{if (fof_n) then "--fofn" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (min_freq) then "--minfreq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (ram) then "--ram" else ""} \
      ~{if (tempdir) then "--tempdir" else ""} \
      ~{if (threads) then "--threads" else ""}
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
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}