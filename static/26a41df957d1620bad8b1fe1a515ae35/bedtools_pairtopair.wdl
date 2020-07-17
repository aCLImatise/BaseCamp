version 1.0

task BedtoolsPairtopair {
  input {
    Boolean? minimum_overlap_required
    Boolean? type
    Boolean? slop
    Boolean? ss
    Boolean? is
    Boolean? rdn
    String? a
    String? b
  }
  command <<<
    bedtools pairtopair \
      ~{true="-f" false="" minimum_overlap_required} \
      ~{true="-type" false="" type} \
      ~{true="-slop" false="" slop} \
      ~{true="-ss" false="" ss} \
      ~{true="-is" false="" is} \
      ~{true="-rdn" false="" rdn} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    minimum_overlap_required: "Minimum overlap required as fraction of A (e.g. 0.05). Default is 1E-9 (effectively 1bp)."
    type: "Approach to reporting overlaps between A and B. neither Report overlaps if neither end of A overlaps B. either  Report overlaps if either ends of A overlap B. both    Report overlaps if both ends of A overlap B. notboth Report overlaps if one or neither of A's overlap B. - Default = both."
    slop: "The amount of slop (in b.p.). to be added to each footprint of A. *Note*: Slop is subtracted from start1 and start2 and added to end1 and end2. - Default = 0."
    ss: "Add slop based to each BEDPE footprint based on strand. - If strand is \"+\", slop is only added to the end coordinates. - If strand is \"-\", slop is only added to the start coordinates. - By default, slop is added in both directions."
    is: "Ignore strands when searching for overlaps. - By default, strands are enforced."
    rdn: "Require the hits to have different names (i.e. avoid self-hits). - By default, same names are allowed."
    a: ""
    b: ""
  }
}