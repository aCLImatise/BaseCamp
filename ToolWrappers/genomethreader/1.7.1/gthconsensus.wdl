version 1.0

task Gthconsensus {
  input {
    Boolean? translation_table
    Boolean? be_verbosedefault_no
    Boolean? xml_out
    Boolean? gff_three_out
    Boolean? md_five_ids
    File? redirect_output_specified
    File? gzip
    File? bzip_two
    File? force
    Boolean? gs_two_out
    Float? min_alignment_score
    Float? max_alignment_score
    Boolean? min_coverage
    Boolean? max_coverage
    Boolean? intermediate
    Boolean? version
  }
  command <<<
    gthconsensus \
      ~{if (translation_table) then "-translationtable" else ""} \
      ~{if (be_verbosedefault_no) then "-v" else ""} \
      ~{if (xml_out) then "-xmlout" else ""} \
      ~{if (gff_three_out) then "-gff3out" else ""} \
      ~{if (md_five_ids) then "-md5ids" else ""} \
      ~{if (redirect_output_specified) then "-o" else ""} \
      ~{if (gzip) then "-gzip" else ""} \
      ~{if (bzip_two) then "-bzip2" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (gs_two_out) then "-gs2out" else ""} \
      ~{if defined(min_alignment_score) then ("-minalignmentscore " +  '"' + min_alignment_score + '"') else ""} \
      ~{if defined(max_alignment_score) then ("-maxalignmentscore " +  '"' + max_alignment_score + '"') else ""} \
      ~{if (min_coverage) then "-mincoverage" else ""} \
      ~{if (max_coverage) then "-maxcoverage" else ""} \
      ~{if (intermediate) then "-intermediate" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    translation_table: "set the codon translation table used for codon translation in\\nmatching, DP, and output\\ndefault: 1"
    be_verbosedefault_no: "be verbose\\ndefault: no"
    xml_out: "show output in XML format\\ndefault: no"
    gff_three_out: "show output in GFF3 format\\ndefault: no"
    md_five_ids: "show MD5 fingerprints as sequence IDs\\ndefault: no"
    redirect_output_specified: "redirect output to specified file\\ndefault: undefined"
    gzip: "write gzip compressed output file\\ndefault: no"
    bzip_two: "write bzip2 compressed output file\\ndefault: no"
    force: "force writing to output file\\ndefault: no"
    gs_two_out: "output in old GeneSeqer2 format\\ndefault: no"
    min_alignment_score: "the minimum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_alignment_score: "the maximum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 1.00"
    min_coverage: "set the minimum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_coverage: "set the maximum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 9999.99"
    intermediate: "stop after calculation of spliced alignments and output\\nresults in reusable XML format. Do not process this output\\nyourself, use the ``normal'' XML output instead!\\ndefault: no"
    version: "display version information and exit"
  }
  output {
    File out_stdout = stdout()
    File out_redirect_output_specified = "${in_redirect_output_specified}"
    File out_gzip = "${in_gzip}"
    File out_bzip_two = "${in_bzip_two}"
    File out_force = "${in_force}"
  }
}