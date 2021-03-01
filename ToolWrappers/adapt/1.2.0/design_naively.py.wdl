version 1.0

task DesignNaivelypy {
  input {
    Int? window_size
    Int? guide_length
    Int? guide_mismatches
    String? best_n
    Boolean? do_not_allow_gu_pairing
    String? skip_gaps
    File? ref_seq
    Boolean? no_consensus
    Boolean? no_mode
    String? diversity
    Int? require_flanking_five
    Int? require_flanking_three
    Boolean? debug
    Boolean? verbose
    String in_fast_a
    String out_tsv
  }
  command <<<
    design_naively_py \
      ~{in_fast_a} \
      ~{out_tsv} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(guide_length) then ("--guide-length " +  '"' + guide_length + '"') else ""} \
      ~{if defined(guide_mismatches) then ("--guide-mismatches " +  '"' + guide_mismatches + '"') else ""} \
      ~{if defined(best_n) then ("--best-n " +  '"' + best_n + '"') else ""} \
      ~{if (do_not_allow_gu_pairing) then "--do-not-allow-gu-pairing" else ""} \
      ~{if defined(skip_gaps) then ("--skip-gaps " +  '"' + skip_gaps + '"') else ""} \
      ~{if defined(ref_seq) then ("--ref-seq " +  '"' + ref_seq + '"') else ""} \
      ~{if (no_consensus) then "--no-consensus" else ""} \
      ~{if (no_mode) then "--no-mode" else ""} \
      ~{if defined(diversity) then ("--diversity " +  '"' + diversity + '"') else ""} \
      ~{if defined(require_flanking_five) then ("--require-flanking5 " +  '"' + require_flanking_five + '"') else ""} \
      ~{if defined(require_flanking_three) then ("--require-flanking3 " +  '"' + require_flanking_three + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/adapt:1.2.0--py_0"
  }
  parameter_meta {
    window_size: "Output guide(s) within each window (sliding along the\\nalignment) of this length"
    guide_length: "Length of guide to construct"
    guide_mismatches: "Allow for this number of mismatches when determining\\nwhether a guide covers a sequence"
    best_n: "Find the best BEST_N guides in each window"
    do_not_allow_gu_pairing: "When determining whether a guide binds to a region of\\ntarget sequence, do not count G-U (wobble) base pairs\\nas matching. Default is to tolerate G-U pairing:\\nnamely, A in an output guide sequence matches G in the\\ntarget and C in an output guide sequence matches T in\\nthe target (since the synthesized guide is the reverse\\ncomplement of the output guide sequence)"
    skip_gaps: "If this fraction or more of sequences at a position\\ncontain a gap character, do not design a guide there"
    ref_seq: "The label used in the FASTA file of the reference\\nsequence to design guides based on sequence diversity;\\nrequired for diversity method"
    no_consensus: "If set, do not use the consensus method to determine\\nguides; otherwise, will use the consensus method"
    no_mode: "If set, do not use the mode method to determine\\nguides; otherwise, will use the mode method"
    diversity: "A string of which diversity method to use to determine\\nguides ('entropy'); None (default) to not use a\\ndiversity method. 'entropy' will calculate the average\\nper position entropy of each potential guide, then\\nreturn the guides at the positions with the lowest\\nentropy; nucleotides are determined by the reference\\nsequence"
    require_flanking_five: "Require the given sequence on the 5' protospacer\\nflanking site (PFS) of each designed guide; this\\ntolerates ambiguity in the sequence (e.g., 'H'\\nrequires 'A', 'C', or 'T', or, equivalently, avoids\\nguides flanked by 'G'). Note that this is the 5' end\\nin the target sequence (not the spacer sequence)."
    require_flanking_three: "Require the given sequence on the 3' protospacer\\nflanking site (PFS) of each designed guide; this\\ntolerates ambiguity in the sequence (e.g., 'H'\\nrequires 'A', 'C', or 'T', or, equivalently, avoids\\nguides flanked by 'G'). Note that this is the 3' end\\nin the target sequence (not the spacer sequence)."
    debug: "Debug output"
    verbose: "Verbose output"
    in_fast_a: "Path to input FASTA (aligned)"
    out_tsv: "Path to TSV file to which to write the output"
  }
  output {
    File out_stdout = stdout()
  }
}