version 1.0

task Leaff {
  input {
    File? use_sequence_f
    File? _read_actions
    Boolean? print_number_sequences
    String? print_index_labelling
    Boolean? insert_newline_lettersif
    String? end_print_bases
    Int? ends
    Boolean? _complement_sequences
    Boolean? dont_print_defline
    Boolean? _reverse_sequences
    Boolean? _uppercase_bases
    Int? s_l_print
    Int? l_print_sequences_s
    Float? h_print_sequences
    File? print_sequences_seqid
    Int? print_picked_sequences
    String? print_single_sequence
    String? l_print_sequences_id
    Boolean? print_sequences_whole
  }
  command <<<
    leaff \
      ~{if defined(use_sequence_f) then ("-f " +  '"' + use_sequence_f + '"') else ""} \
      ~{if defined(_read_actions) then ("-A " +  '"' + _read_actions + '"') else ""} \
      ~{if (print_number_sequences) then "-d" else ""} \
      ~{if defined(print_index_labelling) then ("-i " +  '"' + print_index_labelling + '"') else ""} \
      ~{if (insert_newline_lettersif) then "-6" else ""} \
      ~{if defined(end_print_bases) then ("-e " +  '"' + end_print_bases + '"') else ""} \
      ~{if defined(ends) then ("-ends " +  '"' + ends + '"') else ""} \
      ~{if (_complement_sequences) then "-C" else ""} \
      ~{if (dont_print_defline) then "-H" else ""} \
      ~{if (_reverse_sequences) then "-R" else ""} \
      ~{if (_uppercase_bases) then "-u" else ""} \
      ~{if defined(s_l_print) then ("-G " +  '"' + s_l_print + '"') else ""} \
      ~{if defined(l_print_sequences_s) then ("-L " +  '"' + l_print_sequences_s + '"') else ""} \
      ~{if defined(h_print_sequences) then ("-N " +  '"' + h_print_sequences + '"') else ""} \
      ~{if defined(print_sequences_seqid) then ("-q " +  '"' + print_sequences_seqid + '"') else ""} \
      ~{if defined(print_picked_sequences) then ("-r " +  '"' + print_picked_sequences + '"') else ""} \
      ~{if defined(print_single_sequence) then ("-s " +  '"' + print_single_sequence + '"') else ""} \
      ~{if defined(l_print_sequences_id) then ("-S " +  '"' + l_print_sequences_id + '"') else ""} \
      ~{if (print_sequences_whole) then "-W" else ""}
  >>>
  parameter_meta {
    use_sequence_f: ":     use sequence in 'file' (-F is also allowed for historical reasons)"
    _read_actions: ":     read actions from 'file'"
    print_number_sequences: ":          print the number of sequences in the fasta"
    print_index_labelling: ":     print an index, labelling the source 'name'"
    insert_newline_lettersif: "<#>:      insert a newline every 60 letters\\n(if the next arg is a number, newlines are inserted every\\nn letters, e.g., -6 80.  Disable line breaks with -6 0,\\nor just don't use -6!)"
    end_print_bases: "end:  Print only the bases from position 'beg' to position 'end'\\n(space based, relative to the FORWARD sequence!)  If\\nbeg == end, then the entire sequence is printed.  It is an\\nerror to specify beg > end, or beg > len, or end > len."
    ends: "Print n bases from each end of the sequence.  One input\\nsequence generates two output sequences, with '_5' or '_3'\\nappended to the ID.  If 2n >= length of the sequence, the\\nsequence itself is printed, no ends are extracted (they\\noverlap)."
    _complement_sequences: ":          complement the sequences"
    dont_print_defline: ":          DON'T print the defline"
    _reverse_sequences: ":          reverse the sequences"
    _uppercase_bases: ":          uppercase all bases"
    s_l_print: "s l:    print n randomly generated sequences, 0 < s <= length <= l"
    l_print_sequences_s: "l:      print all sequences such that s <= length < l"
    h_print_sequences: "h:      print all sequences such that l <= % N composition < h\\n(NOTE 0.0 <= l < h < 100.0)\\n(NOTE that you cannot print sequences with 100% N\\nThis is a useful bug)."
    print_sequences_seqid: ":     print sequences from the seqid list in 'file'"
    print_picked_sequences: ":      print 'num' randomly picked sequences"
    print_single_sequence: ":    print the single sequence 'seqid'"
    l_print_sequences_id: "l:      print all the sequences from ID 'f' to 'l' (inclusive)"
    print_sequences_whole: ":          print all sequences (do the whole file)"
  }
  output {
    File out_stdout = stdout()
  }
}