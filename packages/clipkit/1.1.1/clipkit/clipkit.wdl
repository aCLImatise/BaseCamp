version 1.0

task Clipkit {
  input {
    File? output_file_namedefault
    Boolean? smartgap_trimming_default
    Float? specifies_gaps_thresholddefault
    File? input_file_format
    File? output_file_format
    Boolean? creates_fileinput_file
    Boolean? creates_complementary_alignment
    String smartgap_dynamic_determination
    String positions_gappyness_greater
    String creates_log_file
    String creates_alignment_file
  }
  command <<<
    clipkit \
      ~{smartgap_dynamic_determination} \
      ~{positions_gappyness_greater} \
      ~{creates_log_file} \
      ~{creates_alignment_file} \
      ~{if defined(output_file_namedefault) then ("--output " +  '"' + output_file_namedefault + '"') else ""} \
      ~{if (smartgap_trimming_default) then "--modes" else ""} \
      ~{if defined(specifies_gaps_thresholddefault) then ("--gaps " +  '"' + specifies_gaps_thresholddefault + '"') else ""} \
      ~{if defined(input_file_format) then ("--input_file_format " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(output_file_format) then ("--output_file_format " +  '"' + output_file_format + '"') else ""} \
      ~{if (creates_fileinput_file) then "--log" else ""} \
      ~{if (creates_complementary_alignment) then "--complementary" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clipkit:1.1.1--py_0"
  }
  parameter_meta {
    output_file_namedefault: "output file name\\n(default: input file named with '.clipkit' suffix)"
    smartgap_trimming_default: "<smart-gap,                     trimming mode\\ngappy,                          (default: smart-gap)\\nkpic,\\nkpic-smart-gap,\\nkpic-gappy,\\nkpi,\\nkpi-smart-gap,\\nkpi-gappy>"
    specifies_gaps_thresholddefault: "specifies gaps threshold\\n(default: 0.9)"
    input_file_format: "specifies input file format\\n(default: auto-detect)"
    output_file_format: "specifies output file format\\n(default: same as input file format)"
    creates_fileinput_file: "creates a log file\\n(input file named with '.log' suffix)"
    creates_complementary_alignment: "creates complementary alignment of trimmed sequences\\n(input file named with '.log' suffix)"
    smartgap_dynamic_determination: "smart-gap: dynamic determination of gaps threshold\\ngappy: trim sites that are greater than the gaps threshold\\nkpic: keeps parismony informative and constant sites\\nkpic-smart-gap: a combination of kpic- and smart-gap-based trimming\\nkpic-gappy: a combination of kpic- and gappy-based trimming\\nkpi: keep only parsimony informative sites\\nkpi-smart-gap: a combination of kpi- and smart-gap-based trimming\\nkpi-gappy: a combination of kpi- and gappy-based trimming"
    positions_gappyness_greater: "Positions with gappyness greater than threshold will be trimmed. \\nMust be between 0 and 1. (Default: 0.9). This argument is ignored\\nwhen using the kpi and kpic mdoes of trimming as well as an\\niteration of trimming that uses smart-gap."
    creates_log_file: "Creates a log file that summarizes the characteristics of each position.\\nThe log file has four columns.\\n- Column 1 is the position in the alignment (starting at 1),\\n- Column 2 reports if the site was trimmed or kept (trim and keep, respectively),\\n- Column 3 reports if the site is a parsimony informative site or not (PI and nPI, respectively), or\\na constant site or not (Const, nConst), or neither (nConst, nPI)\\n- Column 4 reports the gappyness of the the position (number of gaps / entries in alignment)"
    creates_alignment_file: "Creates an alignment file of only the trimmed sequences"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_namedefault = "${in_output_file_namedefault}"
  }
}