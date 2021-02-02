version 1.0

task Gthsplit {
  input {
    Boolean? alignment_score
    Boolean? coverage
    Boolean? range
    Float? min_alignment_score
    Float? max_alignment_score
    Boolean? min_coverage
    Boolean? max_coverage
    Boolean? be_verbosedefault_no
    File? gzip
    File? bzip_two
    Boolean? force
    Boolean? version
  }
  command <<<
    gthsplit \
      ~{if (alignment_score) then "-alignmentscore" else ""} \
      ~{if (coverage) then "-coverage" else ""} \
      ~{if (range) then "-range" else ""} \
      ~{if defined(min_alignment_score) then ("-minalignmentscore " +  '"' + min_alignment_score + '"') else ""} \
      ~{if defined(max_alignment_score) then ("-maxalignmentscore " +  '"' + max_alignment_score + '"') else ""} \
      ~{if (min_coverage) then "-mincoverage" else ""} \
      ~{if (max_coverage) then "-maxcoverage" else ""} \
      ~{if (be_verbosedefault_no) then "-v" else ""} \
      ~{if (gzip) then "-gzip" else ""} \
      ~{if (bzip_two) then "-bzip2" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    alignment_score: "split according to the overall alignment score (scr)\\ndefault: no"
    coverage: "split according to coverage (cov)\\ndefault: no"
    range: "set the percentage range used to create the sets\\ndefault: 5"
    min_alignment_score: "the minimum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_alignment_score: "the maximum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 1.00"
    min_coverage: "set the minimum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_coverage: "set the maximum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 9999.99"
    be_verbosedefault_no: "be verbose\\ndefault: no"
    gzip: "write gzip compressed output file(s)\\ndefault: no"
    bzip_two: "write bzip2 compressed output file(s)\\ndefault: no"
    force: "force writing to split files\\ndefault: no"
    version: "display version information and exit"
  }
  output {
    File out_stdout = stdout()
    File out_gzip = "${in_gzip}"
    File out_bzip_two = "${in_bzip_two}"
  }
}