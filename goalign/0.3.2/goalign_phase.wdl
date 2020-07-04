version 1.0

task GoalignPhase {
  input {
    String? aa_output
    Boolean? cut_end
    Float? gap_extend
    Float? gap_open
    String? genetic_code
    Float? len_cut_off
    String? log
    Float? match
    Float? match_cut_off
    Float? mismatch
    String? var_output
    String? ref_orf
    Boolean? reverse
    Boolean? unaligned
    String? align
    Boolean? auto_detect
    Boolean? clustal
    Boolean? ignore_identical
    Boolean? input_strict
    Boolean? nexus
    Boolean? no_block
    Boolean? one_line
    Boolean? output_strict
    Boolean? phylip
    Int? seed
    Int? threads
    String? flags
  }
  command <<<
    goalign phase \
      ~{flags} \
      ~{if defined(aa_output) then ("--aa-output " +  '"' + aa_output + '"') else ""} \
      ~{true="--cut-end" false="" cut_end} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(genetic_code) then ("--genetic-code " +  '"' + genetic_code + '"') else ""} \
      ~{if defined(len_cut_off) then ("--len-cutoff " +  '"' + len_cut_off + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(match_cut_off) then ("--match-cutoff " +  '"' + match_cut_off + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(ref_orf) then ("--ref-orf " +  '"' + ref_orf + '"') else ""} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--unaligned" false="" unaligned} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{true="--auto-detect" false="" auto_detect} \
      ~{true="--clustal" false="" clustal} \
      ~{true="--ignore-identical" false="" ignore_identical} \
      ~{true="--input-strict" false="" input_strict} \
      ~{true="--nexus" false="" nexus} \
      ~{true="--no-block" false="" no_block} \
      ~{true="--one-line" false="" one_line} \
      ~{true="--output-strict" false="" output_strict} \
      ~{true="--phylip" false="" phylip} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    aa_output: "Output Met \"phased\" aa FASTA file (default \"none\")"
    cut_end: "Iftrue, then also remove the end of sequences that do not align with orf"
    gap_extend: "Score for extending a gap  (default -0.5)"
    gap_open: "Score for opening a gap  (default -10)"
    genetic_code: "Genetic Code: standard, mitoi (invertebrate mitochondrial) or mitov (vertebrate mitochondrial) (default \"standard\")"
    len_cut_off: "Length cutoff, over orf length, to consider sequence hits (-1==No cutoff) (default -1)"
    log: "Output log: positions of the considered Start for each sequence (default \"none\")"
    match: "Score for a match for pairwise alignment (if omitted, then take substitution matrix) (default 1)"
    match_cut_off: "Nb Matches cutoff, over alignment length, to consider sequence hits (-1==No cutoff) (default 0.5)"
    mismatch: "Score for a mismatch for pairwise alignment (if omitted, then take substitution matrix) (default -1)"
    var_output: "Output \"phased\" FASTA file (default \"stdout\")"
    ref_orf: "Reference ORF to phase against (if none is given, then will try to get the longest orf in the input data) (default \"none\")"
    reverse: "Search ALSO in the reverse strand (in addition to the forward strand)"
    unaligned: "Considers sequences as unaligned and only format fasta is accepted (phylip, nexus,... options are ignored)"
    align: "Alignment input file (default \"stdin\")"
    auto_detect: "Auto detects input format (overrides -p, -x and -u)"
    clustal: "Alignment is in clustal? default fasta"
    ignore_identical: "Ignore duplicated sequences that have the same name and same sequences"
    input_strict: "Strict phylip input format (only used with -p)"
    nexus: "Alignment is in nexus? default fasta"
    no_block: "Write Phylip sequences without space separated blocks (only used with -p)"
    one_line: "Write Phylip sequences on 1 line (only used with -p)"
    output_strict: "Strict phylip output format (only used with -p)"
    phylip: "Alignment is in phylip? default fasta"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (default 1)"
    flags: ""
  }
}