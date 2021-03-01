version 1.0

task MergeDoubleRgspl {
  input {
    Boolean? minimum_overlap_required
    Boolean? type
    Boolean? slop
    Boolean? ss
    Boolean? is
    Boolean? rdn
    String? output_only_bytes
    String? output_only_characters
    String? use_char_tab
    Boolean? output_only_lines
    Boolean? ignored
    String? a
    String bed_tools
    String cut
    File? var_file
    String pair_to_pair
  }
  command <<<
    merge_double_rgs_pl \
      ~{bed_tools} \
      ~{cut} \
      ~{var_file} \
      ~{pair_to_pair} \
      ~{if (minimum_overlap_required) then "-f" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (slop) then "-slop" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (is) then "-is" else ""} \
      ~{if (rdn) then "-rdn" else ""} \
      ~{if defined(output_only_bytes) then ("-b " +  '"' + output_only_bytes + '"') else ""} \
      ~{if defined(output_only_characters) then ("-c " +  '"' + output_only_characters + '"') else ""} \
      ~{if defined(use_char_tab) then ("-d " +  '"' + use_char_tab + '"') else ""} \
      ~{if (output_only_lines) then "-s" else ""} \
      ~{if (ignored) then "-n" else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_overlap_required: "Minimum overlap required as fraction of A (e.g. 0.05).\\nDefault is 1E-9 (effectively 1bp)."
    type: "Approach to reporting overlaps between A and B.\\nneither Report overlaps if neither end of A overlaps B.\\neither  Report overlaps if either ends of A overlap B.\\nboth    Report overlaps if both ends of A overlap B.\\nnotboth Report overlaps if one or neither of A's overlap B.\\n- Default = both."
    slop: "The amount of slop (in b.p.). to be added to each footprint of A.\\n*Note*: Slop is subtracted from start1 and start2\\nand added to end1 and end2.\\n- Default = 0."
    ss: "Add slop based to each BEDPE footprint based on strand.\\n- If strand is \\\"+\\\", slop is only added to the end coordinates.\\n- If strand is \\\"-\\\", slop is only added to the start coordinates.\\n- By default, slop is added in both directions."
    is: "Ignore strands when searching for overlaps.\\n- By default, strands are enforced."
    rdn: "Require the hits to have different names (i.e. avoid self-hits).\\n- By default, same names are allowed."
    output_only_bytes: "Output only bytes from LIST"
    output_only_characters: "Output only characters from LIST"
    use_char_tab: "Use CHAR instead of tab as the field delimiter"
    output_only_lines: "Output only the lines containing delimiter"
    ignored: "Ignored"
    a: ""
    bed_tools: ""
    cut: ""
    var_file: ""
    pair_to_pair: ""
  }
  output {
    File out_stdout = stdout()
  }
}