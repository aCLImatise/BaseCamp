version 1.0

task ArbReadseq {
  input {
    Boolean? change_lower_case
    Boolean? change_upper_case
    Boolean? de_gap
    Boolean? select_item_numbers
    Boolean? list_sequences_only
    Boolean? outseq_redirect_output
    Boolean? pipe_command_line
    Boolean? _change_reversecomplement
    Boolean? _verbose_progress
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
    Boolean? var_19
    String a_select_sequences
  }
  command <<<
    arb_readseq \
      ~{a_select_sequences} \
      ~{if (change_lower_case) then "-c" else ""} \
      ~{if (change_upper_case) then "-C" else ""} \
      ~{if (de_gap) then "-degap" else ""} \
      ~{if (select_item_numbers) then "-i" else ""} \
      ~{if (list_sequences_only) then "-l" else ""} \
      ~{if (outseq_redirect_output) then "-o" else ""} \
      ~{if (pipe_command_line) then "-p" else ""} \
      ~{if (_change_reversecomplement) then "-r" else ""} \
      ~{if (_verbose_progress) then "-v" else ""} \
      ~{if (wid) then "-wid" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if (col) then "-col" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (name_right) then "-nameright" else ""} \
      ~{if (name_top) then "-nametop" else ""} \
      ~{if (num_right) then "-numright" else ""} \
      ~{if (num_top) then "-numtop" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (inter) then "-inter" else ""} \
      ~{if (var_19) then "-options" else ""}
  >>>
  parameter_meta {
    change_lower_case: "[aselower]   change to lower case"
    change_upper_case: "[ASEUPPER]   change to UPPER CASE"
    de_gap: "[=-]     remove gap symbols"
    select_item_numbers: "[tem=2,3,4]  select Item number(s) from several"
    list_sequences_only: "[ist]        List sequences only"
    outseq_redirect_output: "[utput=]out.seq  redirect Output"
    pipe_command_line: "[ipe]        Pipe (command line, <stdin, >stdout)"
    _change_reversecomplement: "[everse]     change to Reverse-complement"
    _verbose_progress: "[erbose]     Verbose progress"
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
    var_19: ""
    a_select_sequences: "-a[ll]         select All sequences"
  }
  output {
    File out_stdout = stdout()
  }
}