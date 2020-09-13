version 1.0

task Circminer {
  input {
    Boolean? index
    Boolean? compact_index
    Boolean? km_er
    Boolean? reference
    Boolean? gtf
    Boolean? seq
    Boolean? seq_one
    Boolean? seq_two
    Boolean? rlen
    Boolean? max_ed
    Boolean? max_sc
    Boolean? band
    Boolean? seed_lim
    Boolean? max_tlen
    Boolean? max_intron
    Boolean? max_chain_list
    Boolean? prefix_output_files
    Boolean? thread
    Boolean? sam
    Boolean? pam
    Boolean? verbosity
    Boolean? scan_lev
  }
  command <<<
    circminer \
      ~{if (index) then "--index" else ""} \
      ~{if (compact_index) then "--compact-index" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (seq) then "--seq" else ""} \
      ~{if (seq_one) then "--seq1" else ""} \
      ~{if (seq_two) then "--seq2" else ""} \
      ~{if (rlen) then "--rlen" else ""} \
      ~{if (max_ed) then "--max-ed" else ""} \
      ~{if (max_sc) then "--max-sc" else ""} \
      ~{if (band) then "--band" else ""} \
      ~{if (seed_lim) then "--seed-lim" else ""} \
      ~{if (max_tlen) then "--max-tlen" else ""} \
      ~{if (max_intron) then "--max-intron" else ""} \
      ~{if (max_chain_list) then "--max-chain-list" else ""} \
      ~{if (prefix_output_files) then "--output" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (pam) then "--pam" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (scan_lev) then "--scan-lev" else ""}
  >>>
  parameter_meta {
    index: ":            Indicates the indexing stage."
    compact_index: ":    Use this option only while building the index to enable compact version of the index."
    km_er: ":             Kmer size [14..22] (default = 20)."
    reference: ":        Reference file."
    gtf: ":              Gene model file."
    seq: ":              Single-end sequence file."
    seq_one: ":             1st paired-end sequence file."
    seq_two: ":             2nd paired-end sequence file."
    rlen: ":             Max read length (default = 300)."
    max_ed: ":           Max allowed edit distance on each mate (default = 4)."
    max_sc: ":           Max allowed soft clipping on each mate (default = 7)."
    band: ":             Band width for banded alignment (default = 3)."
    seed_lim: ":         Skip seeds that have more than INT occurrences (default = 500)."
    max_tlen: ":         Maximum template length of concordant mapping. Paired-end mode only (default = 500)."
    max_intron: ":       Maximum length of an intron (default = 2000000)."
    max_chain_list: ":   Maximum number of chained candidates to be processed (default = 30)."
    prefix_output_files: ":           Prefix of output files (default = output)."
    thread: ":           Number of threads (default = 1)."
    sam: ":              Enables SAM output for aligned reads. Cannot be set along with --pam."
    pam: ":              Enables custom pam output for aligned reads. Cannot be set along with --sam."
    verbosity: ":        Verbosity mode: 0 or 1. Higher values output more information (default = 0)."
    scan_lev: ":         Transcriptome/Genome scan level: 0 to 2. (default = 0)\\n0: Report the first mapping.\\n1: Continue processing the read unless it is perfectly mapped to cDNA.\\n2: Report the best mapping."
  }
  output {
    File out_stdout = stdout()
  }
}