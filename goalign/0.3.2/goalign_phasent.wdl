version 1.0

task GoalignPhasent {
  input {
    File? aa_output
    Boolean? cut_end
    Float? gap_extend
    Float? gap_open
    String? genetic_code
    Float? len_cut_off
    String? log
    Float? match
    Float? match_cut_off
    Float? mismatch
    File? nt_output
    File? var_output
    String? ref_orf
    Boolean? reverse
    Boolean? unaligned
    File? align
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
  }
  command <<<
    goalign phasent \
      ~{if defined(aa_output) then ("--aa-output " +  '"' + aa_output + '"') else ""} \
      ~{if (cut_end) then "--cut-end" else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(genetic_code) then ("--genetic-code " +  '"' + genetic_code + '"') else ""} \
      ~{if defined(len_cut_off) then ("--len-cutoff " +  '"' + len_cut_off + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(match_cut_off) then ("--match-cutoff " +  '"' + match_cut_off + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(nt_output) then ("--nt-output " +  '"' + nt_output + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(ref_orf) then ("--ref-orf " +  '"' + ref_orf + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if (auto_detect) then "--auto-detect" else ""} \
      ~{if (clustal) then "--clustal" else ""} \
      ~{if (ignore_identical) then "--ignore-identical" else ""} \
      ~{if (input_strict) then "--input-strict" else ""} \
      ~{if (nexus) then "--nexus" else ""} \
      ~{if (no_block) then "--no-block" else ""} \
      ~{if (one_line) then "--one-line" else ""} \
      ~{if (output_strict) then "--output-strict" else ""} \
      ~{if (phylip) then "--phylip" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    aa_output: "Output translated sequences FASTA file (default \\\"none\\\")"
    cut_end: "If true, then also remove the end of sequences that do not align with orf"
    gap_extend: "Score for extending a gap  (default -0.5)"
    gap_open: "Score for opening a gap  (default -12)"
    genetic_code: "Genetic Code: standard, mitoi (invertebrate mitochondrial) or mitov (vertebrate mitochondrial) (default \\\"standard\\\")"
    len_cut_off: "Length cutoff, over orf length, to consider sequence hits (-1==No cutoff) (default -1)"
    log: "Output log: positions of the considered ATG for each sequence (default \\\"none\\\")"
    match: "Score for a match for pairwise alignment (if omitted, then take substitution matrix) (default 1)"
    match_cut_off: "Nb Matches cutoff, over alignment length, to consider sequence hits (-1==No cutoff) (default 0.5)"
    mismatch: "Score for a mismatch for pairwise alignment (if omitted, then take substitution matrix) (default -1)"
    nt_output: "Output ATG \\\"phased\\\" FASTA file + first nts not in ref phase removed (nt corresponding to aa-output sequence) (default \\\"none\\\")"
    var_output: "Output ATG \\\"phased\\\" FASTA file (default \\\"stdout\\\")"
    ref_orf: "Reference ORF to phase against (if none is given, then will try to get the longest orf in the input data) (default \\\"none\\\")"
    reverse: "Search ALSO in the reverse strand (in addition to the forward strand)"
    unaligned: "Considers sequences as unaligned and only format fasta is accepted (phylip, nexus,... options are ignored)"
    align: "Alignment input file (default \\\"stdin\\\")"
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
  }
  output {
    File out_stdout = stdout()
    File out_aa_output = "${in_aa_output}"
    File out_nt_output = "${in_nt_output}"
    File out_var_output = "${in_var_output}"
  }
}