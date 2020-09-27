version 1.0

task Countwords {
  input {
    Boolean? change_verbosity_level
    Boolean? set_oligomer_length
    Boolean? _input_filename
    Boolean? two_str
    Boolean? one_str
    Boolean? sp
    Boolean? noov
    Boolean? group_rc
    Boolean? nogroup_rc
    String count_words
    String sequences
  }
  command <<<
    count_words \
      ~{count_words} \
      ~{sequences} \
      ~{if (change_verbosity_level) then "-v" else ""} \
      ~{if (set_oligomer_length) then "-l" else ""} \
      ~{if (_input_filename) then "-i" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (sp) then "-sp" else ""} \
      ~{if (noov) then "-noov" else ""} \
      ~{if (group_rc) then "-grouprc" else ""} \
      ~{if (nogroup_rc) then "-nogrouprc" else ""}
  >>>
  parameter_meta {
    change_verbosity_level: "#             change verbosity level (0, 1, 2)"
    set_oligomer_length: "#             set oligomer length to # (monad size when using dyads)"
    _input_filename: "#             input filename"
    two_str: "add reverse complement"
    one_str: "do not add reverse complement"
    sp: "#-#          spacing between the two parts of the dyads from # to #"
    noov: "do not allow overlapping occurrences"
    group_rc: "group reverse complement with the direct sequence"
    nogroup_rc: "do not group reverse complement with the direct sequence"
    count_words: "AUTHOR"
    sequences: "pattern discovery"
  }
  output {
    File out_stdout = stdout()
  }
}