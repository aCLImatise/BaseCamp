version 1.0

task HicstuffIteralign {
  input {
    File? genome
    Int? threads
    Directory? tempdir
    Int? min_len
    File? out_bam
    Int? read_len
    Boolean? a
    Int? aligner
    String reads_dot_fq
    Directory directory_dot
  }
  command <<<
    hicstuff iteralign \
      ~{reads_dot_fq} \
      ~{directory_dot} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(out_bam) then ("--out-bam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicstuff:2.3.2--py_0"
  }
  parameter_meta {
    genome: "The genome on which to map the reads. Must be\\nthe path to the bowtie2/bwa index if using bowtie2/bwa\\nor to the genome in fasta format if using minimap2."
    threads: "Number of parallel threads allocated for the\\nalignment [default: 1]."
    tempdir: "Temporary directory. Defaults to current"
    min_len: "Length to which the reads should be\\ntruncated [default: 20]."
    out_bam: "Path where the alignment will be written in\\nBAM format."
    read_len: "Read length in input FASTQ file. If not provided,\\nthis is estimated from the first read in the file.\\n"
    a: ""
    aligner: ""
    reads_dot_fq: "Fastq file containing the reads to be aligned"
    directory_dot: "-a, --aligner=bowtie2    Choose alignment software between bowtie2,"
  }
  output {
    File out_stdout = stdout()
  }
}