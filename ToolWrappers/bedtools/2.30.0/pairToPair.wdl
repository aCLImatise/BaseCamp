version 1.0

task PairToPair {
  input {
    Boolean? minimum_overlap_required
    Boolean? type
    Boolean? slop
    Boolean? ss
    Boolean? is
    Boolean? rdn
    String? b
    String? a
  }
  command <<<
    pairToPair \
      ~{if (minimum_overlap_required) then "-f" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (slop) then "-slop" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (is) then "-is" else ""} \
      ~{if (rdn) then "-rdn" else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    minimum_overlap_required: "Minimum overlap required as fraction of A (e.g. 0.05).\\nDefault is 1E-9 (effectively 1bp)."
    type: "Approach to reporting overlaps between A and B.\\nneither Report overlaps if neither end of A overlaps B.\\neither  Report overlaps if either ends of A overlap B.\\nboth    Report overlaps if both ends of A overlap B.\\nnotboth Report overlaps if one or neither of A's overlap B.\\n- Default = both."
    slop: "The amount of slop (in b.p.). to be added to each footprint of A.\\n*Note*: Slop is subtracted from start1 and start2\\nand added to end1 and end2.\\n- Default = 0."
    ss: "Add slop based to each BEDPE footprint based on strand.\\n- If strand is \\\"+\\\", slop is only added to the end coordinates.\\n- If strand is \\\"-\\\", slop is only added to the start coordinates.\\n- By default, slop is added in both directions."
    is: "Ignore strands when searching for overlaps.\\n- By default, strands are enforced."
    rdn: "Require the hits to have different names (i.e. avoid self-hits).\\n- By default, same names are allowed."
    b: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}