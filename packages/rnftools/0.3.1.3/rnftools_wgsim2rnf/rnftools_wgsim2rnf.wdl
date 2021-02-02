version 1.0

task RnftoolsWgsim2rnf {
  input {
    File? wg_sim_fast_q_one
    File? wg_sim_fast_q_two
    File? rnf_fast_q
    File? fa_idx
    Int? genome_id
    Boolean? allow_unmapped
  }
  command <<<
    rnftools wgsim2rnf \
      ~{if defined(wg_sim_fast_q_one) then ("--wgsim-fastq-1 " +  '"' + wg_sim_fast_q_one + '"') else ""} \
      ~{if defined(wg_sim_fast_q_two) then ("--wgsim-fastq-2 " +  '"' + wg_sim_fast_q_two + '"') else ""} \
      ~{if defined(rnf_fast_q) then ("--rnf-fastq " +  '"' + rnf_fast_q + '"') else ""} \
      ~{if defined(fa_idx) then ("--faidx " +  '"' + fa_idx + '"') else ""} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""} \
      ~{if (allow_unmapped) then "--allow-unmapped" else ""}
  >>>
  parameter_meta {
    wg_sim_fast_q_one: "First WgSim FASTQ file (- for standard input)"
    wg_sim_fast_q_two: "Second WgSim FASTQ file (in case of paired-end reads,\\ndefault: none)."
    rnf_fast_q: "Output FASTQ file (- for standard output)."
    fa_idx: "FAI index of the reference FASTA file (- for standard\\ninput). It can be created using 'samtools faidx'."
    genome_id: "Genome ID in RNF (default: 1)."
    allow_unmapped: "Allow unmapped reads."
  }
  output {
    File out_stdout = stdout()
    File out_rnf_fast_q = "${in_rnf_fast_q}"
  }
}