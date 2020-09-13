version 1.0

task RnftoolsCuresim2rnf {
  input {
    File? cure_sim_fast_q
    File? rnf_fast_q
    File? fa_idx
    Int? genome_id
  }
  command <<<
    rnftools curesim2rnf \
      ~{if defined(cure_sim_fast_q) then ("--curesim-fastq " +  '"' + cure_sim_fast_q + '"') else ""} \
      ~{if defined(rnf_fast_q) then ("--rnf-fastq " +  '"' + rnf_fast_q + '"') else ""} \
      ~{if defined(fa_idx) then ("--faidx " +  '"' + fa_idx + '"') else ""} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""}
  >>>
  parameter_meta {
    cure_sim_fast_q: "CuReSim FASTQ file (- for standard input)."
    rnf_fast_q: "Output FASTQ file (- for standard output)."
    fa_idx: "FAI index of the reference FASTA file (- for standard\\ninput). It can be created using 'samtools faidx'."
    genome_id: "Genome ID in RNF (default: 1).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_rnf_fast_q = "${in_rnf_fast_q}"
  }
}