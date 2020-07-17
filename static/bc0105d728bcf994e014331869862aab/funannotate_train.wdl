version 1.0

task FunannotateTrain {
  input {
    Boolean? genome_multifasta_file
    Boolean? out
    Boolean? leftforward_fastq_illumina
    Boolean? rightreverse_fastq_illumina
    Boolean? single
    Boolean? aligners
    Boolean? max_intron_len
    Boolean? species
    Boolean? strain
    Boolean? isolate
    Boolean? cpus
    String arguments
  }
  command <<<
    funannotate train \
      ~{arguments} \
      ~{true="--input" false="" genome_multifasta_file} \
      ~{true="--out" false="" out} \
      ~{true="--left" false="" leftforward_fastq_illumina} \
      ~{true="--right" false="" rightreverse_fastq_illumina} \
      ~{true="--single" false="" single} \
      ~{true="--aligners" false="" aligners} \
      ~{true="--max_intronlen" false="" max_intron_len} \
      ~{true="--species" false="" species} \
      ~{true="--strain" false="" strain} \
      ~{true="--isolate" false="" isolate} \
      ~{true="--cpus" false="" cpus}
  >>>
  parameter_meta {
    genome_multifasta_file: "Genome multi-fasta file"
    out: "Output folder name"
    leftforward_fastq_illumina: "Left/Forward FASTQ Illumina reads (R1)"
    rightreverse_fastq_illumina: "Right/Reverse FASTQ Illumina reads (R2)"
    single: "Single ended FASTQ reads"
    aligners: "Aligners to use with PASA: Default: minimap2 blat [gmap]"
    max_intron_len: "Maximum intron length. Default: 3000"
    species: "Species name, use quotes for binomial, e.g. \"Aspergillus fumigatus\""
    strain: "Strain name"
    isolate: "Isolate name"
    cpus: "Number of CPUs to use. Default: 2"
    arguments: ""
  }
}