version 1.0

task StrlingExtract {
  input {
    Int? fast_a
    String bam
    String bin
  }
  command <<<
    strling extract \
      ~{bam} \
      ~{bin} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "path to fasta file (required for CRAM)\\n-g, --genome-repeats=GENOME_REPEATS\\noptional path to genome repeats file. if it does not exist, it will be created\\n-p, --proportion-repeat=PROPORTION_REPEAT\\nproportion of read that is repetitive to be considered as STR (default: 0.8)\\n-q, --min-mapq=MIN_MAPQ    minimum mapping quality (does not apply to STR reads) (default: 40)\\n-v, --verbose\\n-h, --help                 Show this help\\n"
    bam: "path to bam file"
    bin: "path bin to output bin file to be created"
  }
  output {
    File out_stdout = stdout()
  }
}