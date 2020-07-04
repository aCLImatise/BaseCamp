version 1.0

task SmofGrep {
  input {
    Boolean? match_sequence
    File? file
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
      ~{true="--match-sequence" false="" match_sequence} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--files-without-match" false="" files_without_match} \
      ~{true="--files-with-matches" false="" files_with_matches} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{true="--perl-regexp" false="" perl_regexp} \
      ~{true="--ambiguous-nucl" false="" ambiguous_nucl} \
      ~{true="--case-sensitive" false="" case_sensitive} \
      ~{true="--invert-match" false="" invert_match} \
      ~{true="--only-matching" false="" only_matching} \
      ~{if defined(before_context) then ("--before-context " +  '"' + before_context + '"') else ""} \
      ~{if defined(after_context) then ("--after-context " +  '"' + after_context + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{true="--count-matches" false="" count_matches} \
      ~{true="--line-regexp" false="" line_regexp} \
      ~{true="--exact" false="" exact} \
      ~{true="--gapped" false="" gapped} \
      ~{true="--both-strands" false="" both_strands} \
      ~{true="--reverse-only" false="" reverse_only} \
      ~{true="--no-color" false="" no_color} \
      ~{true="--force-color" false="" force_color} \
      ~{true="--preserve-color" false="" preserve_color} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{true="--gff" false="" gff} \
      ~{if defined(gff_type) then ("--gff-type " +  '"' + gff_type + '"') else ""} \
      ~{if defined(fasta_in) then ("--fastain " +  '"' + fasta_in + '"') else ""}
  >>>
  parameter_meta {
    match_sequence: "match sequence rather than header"
    file: "obtain patterns from FILE, one per line"
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
}