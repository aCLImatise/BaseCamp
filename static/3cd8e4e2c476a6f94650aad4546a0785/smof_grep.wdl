version 1.0

task SmofGrep {
  input {
    Boolean? match_sequence
    File? obtain_patterns_file
    Boolean? files_without_match
    Boolean? files_with_matches
    String? wrap
    Boolean? perl_regexp
    Boolean? ambiguous_nucl
    Boolean? case_sensitive
    Boolean? invert_match
    Boolean? only_matching
    String? before_context
    String? after_context
    String? context
    Boolean? count
    Boolean? count_matches
    Boolean? line_regexp
    Boolean? exact
    Boolean? gapped
    Boolean? both_strands
    Boolean? reverse_only
    Boolean? no_color
    Boolean? force_color
    Boolean? preserve_color
    String? color
    Boolean? gff
    String? gff_type
    String? fasta_in
    String pattern
    String input_fasta_sequence
  }
  command <<<
    smof grep \
      ~{pattern} \
      ~{input_fasta_sequence} \
      ~{if (match_sequence) then "--match-sequence" else ""} \
      ~{if defined(obtain_patterns_file) then ("--file " +  '"' + obtain_patterns_file + '"') else ""} \
      ~{if (files_without_match) then "--files-without-match" else ""} \
      ~{if (files_with_matches) then "--files-with-matches" else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if (perl_regexp) then "--perl-regexp" else ""} \
      ~{if (ambiguous_nucl) then "--ambiguous-nucl" else ""} \
      ~{if (case_sensitive) then "--case-sensitive" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (only_matching) then "--only-matching" else ""} \
      ~{if defined(before_context) then ("--before-context " +  '"' + before_context + '"') else ""} \
      ~{if defined(after_context) then ("--after-context " +  '"' + after_context + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (count_matches) then "--count-matches" else ""} \
      ~{if (line_regexp) then "--line-regexp" else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if (gapped) then "--gapped" else ""} \
      ~{if (both_strands) then "--both-strands" else ""} \
      ~{if (reverse_only) then "--reverse-only" else ""} \
      ~{if (no_color) then "--no-color" else ""} \
      ~{if (force_color) then "--force-color" else ""} \
      ~{if (preserve_color) then "--preserve-color" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if defined(gff_type) then ("--gff-type " +  '"' + gff_type + '"') else ""} \
      ~{if defined(fasta_in) then ("--fastain " +  '"' + fasta_in + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    match_sequence: "match sequence rather than header"
    obtain_patterns_file: "obtain patterns from FILE, one per line"
    files_without_match: "print names files with no matches"
    files_with_matches: "print names input files with matches"
    wrap: "a regular expression to capture patterns"
    perl_regexp: "treat patterns as perl regular expressions"
    ambiguous_nucl: "parse extended nucleotide alphabet"
    case_sensitive: "DO NOT ignore case distinctions (ignore by default)"
    invert_match: "print non-matching entries"
    only_matching: "show only the part that matches"
    before_context: "Include N characters before match"
    after_context: "Include N characters after match"
    context: "Include N characters before and after match"
    count: "print number of entries with matches"
    count_matches: "print number of non-overlapping matches"
    line_regexp: "force PATTERN to match the whole text (regex allowed)"
    exact: "force PATTERN to literally equal the text (fast)"
    gapped: "match across gaps when searching aligned sequences"
    both_strands: "search both strands"
    reverse_only: "only search the reverse strand"
    no_color: "do not print in color"
    force_color: "print in color even to non-tty (DANGEROUS)"
    preserve_color: "Preserve incoming color"
    color: "Choose a highlight color"
    gff: "output matches in gff format"
    gff_type: "name of searched feature"
    fasta_in: "Search for exact sequence matches against FASTA"
    pattern: "pattern to match"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}