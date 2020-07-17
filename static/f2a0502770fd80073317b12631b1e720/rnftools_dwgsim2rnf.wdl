version 1.0

task RnftoolsDwgsim2rnf {
  input {
    String? dwg_sim_prefix
    Boolean? estimate_unknown
    File? rnf_fast_q
    File? fa_idx
    Int? genome_id
  }
  command <<<
    rnftools dwgsim2rnf \
      ~{if defined(dwg_sim_prefix) then ("--dwgsim-prefix " +  '"' + dwg_sim_prefix + '"') else ""} \
      ~{true="--estimate-unknown" false="" estimate_unknown} \
      ~{if defined(rnf_fast_q) then ("--rnf-fastq " +  '"' + rnf_fast_q + '"') else ""} \
      ~{if defined(fa_idx) then ("--faidx " +  '"' + fa_idx + '"') else ""} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""}
  >>>
  parameter_meta {
    dwg_sim_prefix: "Prefix for DwgSim."
    estimate_unknown: "Estimate unknown values."
    rnf_fast_q: "Output FASTQ file (- for standard output)."
    fa_idx: "FAI index of the reference FASTA file (- for standard input). It can be created using 'samtools faidx'."
    genome_id: "Genome ID in RNF (default: 1)."
  }
}