class: CommandLineTool
id: fasta_tool.cwl
inputs:
- id: summary
  doc: For functions that can report data for every sequence (nt_count), use this
    flag to report only summary data for all sequences combined.
  type: boolean
  inputBinding:
    prefix: --summary
- id: chunks
  doc: Break up a single fasta file into the given number of chunks
  type: long
  inputBinding:
    prefix: --chunks
- id: split
  doc: Split a multi-fasta into individual files.  One for each fasta.
  type: boolean
  inputBinding:
    prefix: --split
- id: eval_code
  doc: Run the given code on ($seq_obj, $sequence or $header).  If the code block
    returns a positive value then the sequence is printed.  This can be used to build
    complex and custom filters.
  type: string
  inputBinding:
    prefix: --eval_code
- id: eval_all
  doc: Run the given code on ($seq_obj, $sequence or $header).  Prints all sequences
    regardless of the return value of the evaled code.  This can but used to perform
    operations (e.g. soft to hard masking with s/[a-z]/N/g, but still print every
    sequence even if it's unaltered.
  type: string
  inputBinding:
    prefix: --eval_all
- id: extract_ids
  doc: Extract all of the sequences who's IDs are found in the given file.
  type: string
  inputBinding:
    prefix: --extract_ids
- id: grep_header
  doc: Grep through a multi fasta file and print out only the fasta sequences that
    have a match in the header. Use grepv_header for negation.
  type: string
  inputBinding:
    prefix: --grep_header
- id: grep_seq
  doc: Grep throught a multi fasta file and print out only the fasta sequences that
    have a match in the sequence. Use grepv_seq for negation.
  type: string
  inputBinding:
    prefix: --grep_seq
- id: wrap
  doc: Wrap the sequence output to a given number of columns.
  type: long
  inputBinding:
    prefix: --wrap
- id: translate
  doc: Translate a given nucleotide sequence to protein sequence. accepts 0-2 or 'maker'
    if you want to use the frame from MAKER produced headers
  type: string
  inputBinding:
    prefix: --translate
- id: trim_maker_utr
  doc: Prints MAKER produced transcipts without the leading and trailing UTR sequence
  type: boolean
  inputBinding:
    prefix: --trim_maker_utr
- id: seq_only
  doc: Print only the sequence (without the header) to STDOUT.  This can also be accomplished
    with grep -v '>' fasta_file.
  type: boolean
  inputBinding:
    prefix: --seq_only
- id: nt_count
  doc: Print the number and percentage of every nt/aa found in the sequence.
  type: boolean
  inputBinding:
    prefix: --nt_count
- id: length
  doc: Print the length of each sequence.
  type: boolean
  inputBinding:
    prefix: --length
- id: total_length
  doc: Print the total length of all sequences.
  type: boolean
  inputBinding:
    prefix: --total_length
- id: n50
  doc: Calculate the N-50 (http://en.wikipedia.org/wiki/N50_statistic) of the sequences
    in the file.
  type: boolean
  inputBinding:
    prefix: --n50
- id: tab
  doc: Print the header and sequence on the same line separated by a tab.
  type: boolean
  inputBinding:
    prefix: --tab
- id: table
  doc: Print in table format rather than fasta format.
  type: boolean
  inputBinding:
    prefix: --table
- id: print
  doc: Print the sequence.  Use in conjuction with 'wrap' or other formatting commands
    to reformat the sequence.
  type: boolean
  inputBinding:
    prefix: --print
- id: reverse
  doc: Reverse the order of the sequences in a fasta file.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: rev_seq
  doc: Reverse the order of the nt/aa in each sequence.
  type: boolean
  inputBinding:
    prefix: --rev_seq
- id: comp_seq
  doc: Complement the nucleotide sequence.
  type: boolean
  inputBinding:
    prefix: --comp_seq
- id: rev_comp
  doc: Reverse compliment a sequence.  Same as --rev_seq && --comp_seq together.
  type: boolean
  inputBinding:
    prefix: --rev_comp
- id: shuffle_order
  doc: Randomize the order of sequences in a multi-fasta file.
  type: boolean
  inputBinding:
    prefix: --shuffle_order
- id: shuffle_seq
  doc: Randomize the order of the nt/aa in each sequence.
  type: boolean
  inputBinding:
    prefix: --shuffle_seq
- id: shuffle_codon
  doc: Randomize the order of the codons in a nucleotide sequence.
  type: boolean
  inputBinding:
    prefix: --shuffle_codon
- id: shuffle_pick
  doc: Pick a given number of sequences from a multi-fasta file.
  type: boolean
  inputBinding:
    prefix: --shuffle_pick
- id: select
  doc: Pass in a file with IDs and return sequences with these IDs.
  type: boolean
  inputBinding:
    prefix: --select
- id: remove
  doc: Pass in a file with IDs and remove sequences with these IDs.
  type: boolean
  inputBinding:
    prefix: --remove
- id: swap_ids
  doc: Pass in a file with two columns of IDs and map the IDs in the fasta headers
    from the first column of the ID file to the second column of the ID file.  If
    an ID in the fasta header is not found in the first column of the ID file then
    issue a warning, but leave the ID unmapped.
  type: boolean
  inputBinding:
    prefix: --swap_ids
- id: prot_fix
  doc: Fix protein fasta files for use as blast database.  Removes spaces and '*'
    and replaces any non amino acid codes with C.
  type: boolean
  inputBinding:
    prefix: --prot_fix
- id: subseq
  doc: Grab a sub-sequence from a fasta file based on coordinates.  The requested
    coordinates are in the form seqid:start-end;
  type: boolean
  inputBinding:
    prefix: --subseq
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_tool
