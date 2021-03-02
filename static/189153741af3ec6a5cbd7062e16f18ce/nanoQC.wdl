version 1.0

task NanoQC {
  input {
    Directory? outdir
    Boolean? rna
    Int? l
    Boolean? v
    String fast_q
    String nucleotides_dot
  }
  command <<<
    nanoQC \
      ~{fast_q} \
      ~{nucleotides_dot} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Specify directory in which output has to be created."
    rna: "Fastq is from direct RNA-seq and contains U"
    l: ""
    v: ""
    fast_q: "Reads data in fastq.gz format."
    nucleotides_dot: "-l MINLEN, --minlen MINLEN"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}