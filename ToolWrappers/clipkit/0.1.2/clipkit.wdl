version 1.0

task Clipkit {
  input {
    File? output_file_namedefault
    Boolean? gappy_trimming_alias
    Float? specifies_gaps_thresholddefault
    File? input_file_format
    File? output_file_format
    Boolean? creates_log_fileinput_file
    Boolean? creates_complementary_alignment
    String gappy_trim_sites
    String positions_gappyness_greater
    String creates_log_file_summarizes
    String creates_alignment_file
  }
  command <<<
    clipkit \
      ~{gappy_trim_sites} \
      ~{positions_gappyness_greater} \
      ~{creates_log_file_summarizes} \
      ~{creates_alignment_file} \
      ~{if defined(output_file_namedefault) then ("--output " +  '"' + output_file_namedefault + '"') else ""} \
      ~{if (gappy_trimming_alias) then "--modes" else ""} \
      ~{if defined(specifies_gaps_thresholddefault) then ("--gaps " +  '"' + specifies_gaps_thresholddefault + '"') else ""} \
      ~{if defined(input_file_format) then ("--input_file_format " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(output_file_format) then ("--output_file_format " +  '"' + output_file_format + '"') else ""} \
      ~{if (creates_log_fileinput_file) then "--log" else ""} \
      ~{if (creates_complementary_alignment) then "--complementary" else ""}
  >>>
  parameter_meta {
    output_file_namedefault: "output file name\\n(default: input file named with '.clipkit' suffix)"
    gappy_trimming_alias: "<gappy,                         trimming mode\\nkpic (alias: medium),           (default: gappy)\\nkpic-gappy (alias: medium-gappy),\\nkpi (alias: heavy),\\nkpi-gappy (alias: heavy-gappy)>"
    specifies_gaps_thresholddefault: "specifies gaps threshold\\n(default: 0.9)"
    input_file_format: "specifies input file format\\n(default: auto-detect)"
    output_file_format: "specifies output file format\\n(default: same as input file format)"
    creates_log_fileinput_file: "creates a log file\\n(input file named with '.log' suffix)"
    creates_complementary_alignment: "creates complementary alignment of trimmed sequences\\n(input file named with '.log' suffix)"
    gappy_trim_sites: "gappy: trim sites that are greater than the gaps threshold\\nkpic (alias: medium): keeps parismony informative and constant sites\\nkpic-gappy (alias: medium-gappy): a combination of kpic- and gappy-based trimming\\nkpi (alias: heavy): keep only parsimony informative sites\\nkpi-gappy (alias: heavy-gappy): a combination of kpi- and gappy-based trimming"
    positions_gappyness_greater: "Positions with gappyness greater than threshold will be trimmed. \\nMust be between 0 and 1. (Default: 0.9). This argument is ignored\\nwhen using the kpi mode of trimming."
    creates_log_file_summarizes: "Creates a log file that summarizes the characteristics of each position.\\nThe log file has four columns.\\n- Column 1 is the position in the alignment (starting at 1),\\n- Column 2 reports if the site was trimmed or kept (trim and keep, respectively),\\n- Column 3 reports if the site is a parsimony informative site or not (PI and nPI, respectively), or\\na constant site or not (Const, nConst), or neither (nConst, nPI)\\n- Column 4 reports the gappyness of the the position (number of gaps / entries in alignment)"
    creates_alignment_file: "Creates an alignment file of only the trimmed sequences"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_namedefault = "${in_output_file_namedefault}"
  }
}