version 1.0

task NanoQC {
  input {
    String? outdir
    Boolean? rna
    Int? min_len
    Boolean? v
    String fast_q
  }
  command <<<
    nanoQC \
      ~{fast_q} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--rna" false="" rna} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    outdir: "Specify directory in which output has to be created."
    rna: "Fastq is from direct RNA-seq and contains U nucleotides."
    min_len: "Filters the reads on a minimal length of the given range. Also plots the given length/2 of the begin and end of the reads."
    v: ""
    fast_q: "Reads data in fastq.gz format."
  }
}