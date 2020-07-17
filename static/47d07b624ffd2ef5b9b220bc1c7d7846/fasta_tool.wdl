version 1.0

task FastaTool {
  input {
    Boolean? summary
    Int? chunks
    Boolean? split
    String? eval_code
    String? eval_all
    String? extract_ids
    String? grep_header
    String? grep_seq
    Int? wrap
    String? translate
    Boolean? trim_maker_utr
    Boolean? seq_only
    Boolean? nt_count
    Boolean? length
    Boolean? total_length
    Boolean? n_five_zero
    Boolean? tab
    Boolean? table
    Boolean? print
    Boolean? reverse
    Boolean? rev_seq
    Boolean? comp_seq
    Boolean? rev_comp
    Boolean? shuffle_order
    Boolean? shuffle_seq
    Boolean? shuffle_codon
    Boolean? shuffle_pick
    Boolean? select
    Boolean? remove
    Boolean? swap_ids
    Boolean? prot_fix
    Boolean? subseq
  }
  command <<<
    fasta_tool \
      ~{true="--summary" false="" summary} \
      ~{if defined(chunks) then ("--chunks " +  '"' + chunks + '"') else ""} \
      ~{true="--split" false="" split} \
      ~{if defined(eval_code) then ("--eval_code " +  '"' + eval_code + '"') else ""} \
      ~{if defined(eval_all) then ("--eval_all " +  '"' + eval_all + '"') else ""} \
      ~{if defined(extract_ids) then ("--extract_ids " +  '"' + extract_ids + '"') else ""} \
      ~{if defined(grep_header) then ("--grep_header " +  '"' + grep_header + '"') else ""} \
      ~{if defined(grep_seq) then ("--grep_seq " +  '"' + grep_seq + '"') else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{true="--trim_maker_utr" false="" trim_maker_utr} \
      ~{true="--seq_only" false="" seq_only} \
      ~{true="--nt_count" false="" nt_count} \
      ~{true="--length" false="" length} \
      ~{true="--total_length" false="" total_length} \
      ~{true="--n50" false="" n_five_zero} \
      ~{true="--tab" false="" tab} \
      ~{true="--table" false="" table} \
      ~{true="--print" false="" print} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--rev_seq" false="" rev_seq} \
      ~{true="--comp_seq" false="" comp_seq} \
      ~{true="--rev_comp" false="" rev_comp} \
      ~{true="--shuffle_order" false="" shuffle_order} \
      ~{true="--shuffle_seq" false="" shuffle_seq} \
      ~{true="--shuffle_codon" false="" shuffle_codon} \
      ~{true="--shuffle_pick" false="" shuffle_pick} \
      ~{true="--select" false="" select} \
      ~{true="--remove" false="" remove} \
      ~{true="--swap_ids" false="" swap_ids} \
      ~{true="--prot_fix" false="" prot_fix} \
      ~{true="--subseq" false="" subseq}
  >>>
  parameter_meta {
    summary: "For functions that can report data for every sequence (nt_count), use this flag to report only summary data for all sequences combined."
    chunks: "Break up a single fasta file into the given number of chunks"
    split: "Split a multi-fasta into individual files.  One for each fasta."
    eval_code: "Run the given code on ($seq_obj, $sequence or $header).  If the code block returns a positive value then the sequence is printed.  This can be used to build complex and custom filters."
    eval_all: "Run the given code on ($seq_obj, $sequence or $header).  Prints all sequences regardless of the return value of the evaled code.  This can but used to perform operations (e.g. soft to hard masking with s/[a-z]/N/g, but still print every sequence even if it's unaltered."
    extract_ids: "Extract all of the sequences who's IDs are found in the given file."
    grep_header: "Grep through a multi fasta file and print out only the fasta sequences that have a match in the header. Use grepv_header for negation."
    grep_seq: "Grep throught a multi fasta file and print out only the fasta sequences that have a match in the sequence. Use grepv_seq for negation."
    wrap: "Wrap the sequence output to a given number of columns."
    translate: "Translate a given nucleotide sequence to protein sequence. accepts 0-2 or 'maker' if you want to use the frame from MAKER produced headers"
    trim_maker_utr: "Prints MAKER produced transcipts without the leading and trailing UTR sequence"
    seq_only: "Print only the sequence (without the header) to STDOUT.  This can also be accomplished with grep -v '>' fasta_file."
    nt_count: "Print the number and percentage of every nt/aa found in the sequence."
    length: "Print the length of each sequence."
    total_length: "Print the total length of all sequences."
    n_five_zero: "Calculate the N-50 (http://en.wikipedia.org/wiki/N50_statistic) of the sequences in the file."
    tab: "Print the header and sequence on the same line separated by a tab."
    table: "Print in table format rather than fasta format."
    print: "Print the sequence.  Use in conjuction with 'wrap' or other formatting commands to reformat the sequence."
    reverse: "Reverse the order of the sequences in a fasta file."
    rev_seq: "Reverse the order of the nt/aa in each sequence."
    comp_seq: "Complement the nucleotide sequence."
    rev_comp: "Reverse compliment a sequence.  Same as --rev_seq && --comp_seq together."
    shuffle_order: "Randomize the order of sequences in a multi-fasta file."
    shuffle_seq: "Randomize the order of the nt/aa in each sequence."
    shuffle_codon: "Randomize the order of the codons in a nucleotide sequence."
    shuffle_pick: "Pick a given number of sequences from a multi-fasta file."
    select: "Pass in a file with IDs and return sequences with these IDs."
    remove: "Pass in a file with IDs and remove sequences with these IDs."
    swap_ids: "Pass in a file with two columns of IDs and map the IDs in the fasta headers from the first column of the ID file to the second column of the ID file.  If an ID in the fasta header is not found in the first column of the ID file then issue a warning, but leave the ID unmapped."
    prot_fix: "Fix protein fasta files for use as blast database.  Removes spaces and '*' and replaces any non amino acid codes with C."
    subseq: "Grab a sub-sequence from a fasta file based on coordinates.  The requested coordinates are in the form seqid:start-end;"
  }
}