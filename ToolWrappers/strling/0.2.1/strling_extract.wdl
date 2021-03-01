version 1.0

task StrlingExtract {
  input {
    File? fast_a
    File? genome_repeats
    String? proportion_repeat
    Int? min_mapq
    String bam
    String bin
  }
  command <<<
    strling extract \
      ~{bam} \
      ~{bin} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(genome_repeats) then ("--genome-repeats " +  '"' + genome_repeats + '"') else ""} \
      ~{if defined(proportion_repeat) then ("--proportion-repeat " +  '"' + proportion_repeat + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "path to fasta file (required for CRAM)"
    genome_repeats: "optional path to genome repeats file. if it does not exist, it will be created"
    proportion_repeat: "proportion of read that is repetitive to be considered as STR (default: 0.8)"
    min_mapq: "minimum mapping quality (does not apply to STR reads) (default: 40)"
    bam: "path to bam file"
    bin: "path bin to output bin file to be created"
  }
  output {
    File out_stdout = stdout()
  }
}