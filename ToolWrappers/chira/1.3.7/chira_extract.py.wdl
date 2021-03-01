version 1.0

task ChiraExtractpy {
  input {
    Boolean? loci
    File? out
    Boolean? gtf
    Boolean? processes
    Boolean? tpm_cut_off
    Boolean? score_cut_off
    Boolean? chimeric_overlap
    Boolean? hybridize
    Boolean? no_seed
    Boolean? accessibility
    Boolean? in_tarn_a_mode
    Boolean? temperature
    Boolean? seed_bp
    Boolean? seed_min_pu
    Boolean? acc_width
    Boolean? ref_fast_a_one
    Boolean? ref_fast_a_two
    Boolean? ref
    Boolean? summer_ize
  }
  command <<<
    chira_extract_py \
      ~{if (loci) then "--loci" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (processes) then "--processes" else ""} \
      ~{if (tpm_cut_off) then "--tpm_cutoff" else ""} \
      ~{if (score_cut_off) then "--score_cutoff" else ""} \
      ~{if (chimeric_overlap) then "--chimeric_overlap" else ""} \
      ~{if (hybridize) then "--hybridize" else ""} \
      ~{if (no_seed) then "--no_seed" else ""} \
      ~{if (accessibility) then "--accessibility" else ""} \
      ~{if (in_tarn_a_mode) then "--intarna_mode" else ""} \
      ~{if (temperature) then "--temperature" else ""} \
      ~{if (seed_bp) then "--seed_bp" else ""} \
      ~{if (seed_min_pu) then "--seed_min_pu" else ""} \
      ~{if (acc_width) then "--acc_width" else ""} \
      ~{if (ref_fast_a_one) then "--ref_fasta1" else ""} \
      ~{if (ref_fast_a_two) then "--ref_fasta2" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (summer_ize) then "--summerize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loci: "Input BED file with alignments (default: None)"
    out: "Path to output directory (default: None)"
    gtf: "Annotation GTF file (default: None)"
    processes: "Number of processes to use (default: 1)"
    tpm_cut_off: "Transcripts with less than this percentile TPMs will\\nbe discarded in the final output. [0-1.0] (default: 0)"
    score_cut_off: "Hybrids with less than this score will be discarded in\\nthe final output. [0-1.0] (default: 0.0)"
    chimeric_overlap: "Maximum number of bases allowed between the chimeric\\nsegments of a read (default: 2)"
    hybridize: "Hybridize the predicted chimeras (default: False)"
    no_seed: "Do not enforce seed interactions (default: False)"
    accessibility: "IntaRNA accessibility: C (compute) or N (not)\\n(default: N)"
    in_tarn_a_mode: "IntaRNA mode: H (heuristic), M (exact), S (seed-only)\\n(default: H)"
    temperature: "IntaRNA temperature parameter in Celsius to setup the\\nVRNA energy parameters (default: 37)"
    seed_bp: "IntaRNA --seedBP parameter: number of inter-molecular\\nbase pairs within the seed region (default: 5)"
    seed_min_pu: "IntaRNA --seedMinPu parameter: minimal unpaired\\nprobability (per sequence) a seed region may have\\n(default: 0)"
    acc_width: "IntaRNA --accW parameter: sliding window size for\\naccessibility computation (default: 150)"
    ref_fast_a_one: "First prioroty fasta file (default: None)"
    ref_fast_a_two: "second priority fasta file (default: None)"
    ref: "Reference fasta file (default: None)"
    summer_ize: "Summerize interactions at loci level (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}