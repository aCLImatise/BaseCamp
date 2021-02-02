version 1.0

task Gthfilestat {
  input {
    Float? min_alignment_score
    Float? max_alignment_score
    Boolean? min_coverage
    Boolean? max_coverage
    Boolean? be_verbosedefault_no
    Boolean? version
  }
  command <<<
    gthfilestat \
      ~{if defined(min_alignment_score) then ("-minalignmentscore " +  '"' + min_alignment_score + '"') else ""} \
      ~{if defined(max_alignment_score) then ("-maxalignmentscore " +  '"' + max_alignment_score + '"') else ""} \
      ~{if (min_coverage) then "-mincoverage" else ""} \
      ~{if (max_coverage) then "-maxcoverage" else ""} \
      ~{if (be_verbosedefault_no) then "-v" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    min_alignment_score: "the minimum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_alignment_score: "the maximum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 1.00"
    min_coverage: "set the minimum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_coverage: "set the maximum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 9999.99"
    be_verbosedefault_no: "be verbose\\ndefault: no"
    version: "display version information and exit"
  }
  output {
    File out_stdout = stdout()
  }
}