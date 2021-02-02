version 1.0

task Merci {
  input {
    Boolean? verbose
    Boolean? nb_cores
    Boolean? km_er_size
    Boolean? assembly
    Boolean? reads
  }
  command <<<
    merci \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (reads) then "-reads" else ""}
  >>>
  parameter_meta {
    verbose: "(1 arg) :    verbosity level  [default '1']"
    nb_cores: "(1 arg) :    number of threads  [default '0']"
    km_er_size: "(1 arg) :    kmer size"
    assembly: "(1 arg) :    assembly to improve"
    reads: "(1 arg) :    input reads (fasta/fastq/compressed)"
  }
  output {
    File out_stdout = stdout()
  }
}