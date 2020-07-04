version 1.0

task Readseq {
  input {
    Boolean? _select_sequences
    Boolean? change_lower_case
    Boolean? change_upper_case
    Boolean? ch
    Boolean? de_gap
    Boolean? select_item_numbers
    Boolean? list_sequences_only
    Boolean? outseq_redirect_output
    Boolean? pipe_command_line
    Boolean? reversecomplement_input_sequence
    Boolean? use_several_tio
    Boolean? _verbose_progress
    String? compare
    Boolean? amino
    String? combine_features_fffgff
    String? un_pair
    Boolean? wid
    Boolean? tab
    Boolean? col
    Boolean? gap
    Boolean? name_right
    Boolean? name_top
    Boolean? num_right
    Boolean? num_top
    Boolean? match
    Boolean? inter
    String? cp
    String java
    String run
    String input_file
  }
  command <<<
    readseq \
      ~{java} \
      ~{run} \
      ~{input_file} \
      ~{true="-a" false="" _select_sequences} \
      ~{true="-c" false="" change_lower_case} \
      ~{true="-C" false="" change_upper_case} \
      ~{true="-ch" false="" ch} \
      ~{true="-degap" false="" de_gap} \
      ~{true="-i" false="" select_item_numbers} \
      ~{true="-l" false="" list_sequences_only} \
      ~{true="-o" false="" outseq_redirect_output} \
      ~{true="-p" false="" pipe_command_line} \
      ~{true="-r" false="" reversecomplement_input_sequence} \
      ~{true="-t" false="" use_several_tio} \
      ~{true="-v" false="" _verbose_progress} \
      ~{if defined(compare) then ("-compare " +  '"' + compare + '"') else ""} \
      ~{true="-amino" false="" amino} \
      ~{if defined(combine_features_fffgff) then ("-pair " +  '"' + combine_features_fffgff + '"') else ""} \
      ~{if defined(un_pair) then ("-unpair " +  '"' + un_pair + '"') else ""} \
      ~{true="-wid" false="" wid} \
      ~{true="-tab" false="" tab} \
      ~{true="-col" false="" col} \
      ~{true="-gap" false="" gap} \
      ~{true="-nameright" false="" name_right} \
      ~{true="-nametop" false="" name_top} \
      ~{true="-numright" false="" num_right} \
      ~{true="-numtop" false="" num_top} \
      ~{true="-match" false="" match} \
      ~{true="-inter" false="" inter} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""}
  >>>
  parameter_meta {
    _select_sequences: "[ll]              select All sequences"
    change_lower_case: "[aselower]        change to lower case"
    change_upper_case: "[ASEUPPER]        change to UPPER CASE"
    ch: "[ecksum]         calculate & print checksum of sequences"
    de_gap: "[=-]          remove gap symbols"
    select_item_numbers: "[tem=2,3,4]       select Item number(s) from several"
    list_sequences_only: "[ist]             List sequences only"
    outseq_redirect_output: "[utput=]out.seq   redirect Output"
    pipe_command_line: "[ipe]             Pipe (command line, < stdin, > stdout)"
    reversecomplement_input_sequence: "[everse]          reverse-complement of input sequence"
    use_several_tio: "[ranslate=]io     translate input symbol [i] to output symbol [o] use several -tio to translate several symbols"
    _verbose_progress: "[erbose]          Verbose progress"
    compare: "Compare two sequence files, reporting differences (flags=nodoc,noid,nolen,nocrc)"
    amino: "[translate]   translate dna to amino acids"
    combine_features_fffgff: "* combine features (fff,gff) and sequence files to one output"
    un_pair: "* split features,sequence from one input to two files"
    wid: "[th]=#            sequence line width"
    tab: "=#                left indent"
    col: "[space]=#         column space within sequence line on output"
    gap: "[count]           count gap chars in sequence numbers"
    name_right: "[=#]   name on left/right side [=max width]"
    name_top: "name at top/bottom"
    num_right: "seq index on left/right side"
    num_top: "index on top/bottom"
    match: "[=.]            use match base for 2..n species"
    inter: "[line=#]        blank line(s) between sequence blocks"
    cp: ""
    java: ""
    run: ""
    input_file: ""
  }
}