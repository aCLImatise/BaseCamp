version 1.0

task GtfToGenePred {
  input {
    Boolean? gene_pred_ext
    Boolean? all_errors
    Boolean? ignore_groups_without_exons
    File? info_out
    String? source_prefix
    Boolean? implied_stop_after_cds
    Boolean? simple
    Boolean? gene_name_as_name_two
    Boolean? include_version
    String gtf
  }
  command <<<
    gtfToGenePred \
      ~{gtf} \
      ~{if (gene_pred_ext) then "-genePredExt" else ""} \
      ~{if (all_errors) then "-allErrors" else ""} \
      ~{if (ignore_groups_without_exons) then "-ignoreGroupsWithoutExons" else ""} \
      ~{if defined(info_out) then ("-infoOut " +  '"' + info_out + '"') else ""} \
      ~{if defined(source_prefix) then ("-sourcePrefix " +  '"' + source_prefix + '"') else ""} \
      ~{if (implied_stop_after_cds) then "-impliedStopAfterCds" else ""} \
      ~{if (simple) then "-simple" else ""} \
      ~{if (gene_name_as_name_two) then "-geneNameAsName2" else ""} \
      ~{if (include_version) then "-includeVersion" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_pred_ext: "- create a extended genePred, including frame\\ninformation and gene name"
    all_errors: "- skip groups with errors rather than aborting.\\nUseful for getting infomation about as many errors as possible."
    ignore_groups_without_exons: "- skip groups contain no exons rather than\\ngenerate an error."
    info_out: "- write a file with information on each transcript"
    source_prefix: "- only process entries where the source name has the\\nspecified prefix.  May be repeated."
    implied_stop_after_cds: "- implied stop codon in after CDS"
    simple: "- just check column validity, not hierarchy, resulting genePred may be damaged"
    gene_name_as_name_two: "- if specified, use gene_name for the name2 field\\ninstead of gene_id."
    include_version: "- it gene_version and/or transcript_version attributes exist, include the version\\nin the corresponding identifiers.\\n"
    gtf: ""
  }
  output {
    File out_stdout = stdout()
  }
}