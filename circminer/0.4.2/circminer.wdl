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
      ~{true="--index" false="" index} \
      ~{true="--compact-index" false="" compact_index} \
      ~{true="--kmer" false="" km_er} \
      ~{true="--reference" false="" reference} \
      ~{true="--gtf" false="" gtf} \
      ~{true="--seq" false="" seq} \
      ~{true="--seq1" false="" seq_one} \
      ~{true="--seq2" false="" seq_two} \
      ~{true="--rlen" false="" rlen} \
      ~{true="--max-ed" false="" max_ed} \
      ~{true="--max-sc" false="" max_sc} \
      ~{true="--band" false="" band} \
      ~{true="--seed-lim" false="" seed_lim} \
      ~{true="--max-tlen" false="" max_tlen} \
      ~{true="--max-intron" false="" max_intron} \
      ~{true="--max-chain-list" false="" max_chain_list} \
      ~{true="--output" false="" prefix_output_files} \
      ~{true="--thread" false="" thread} \
      ~{true="--sam" false="" sam} \
      ~{true="--pam" false="" pam} \
      ~{true="--verbosity" false="" verbosity} \
      ~{true="--scan-lev" false="" scan_lev}
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
    scan_lev: ":         Transcriptome/Genome scan level: 0 to 2. (default = 0) 0: Report the first mapping. 1: Continue processing the read unless it is perfectly mapped to cDNA. 2: Report the best mapping."
  }
}