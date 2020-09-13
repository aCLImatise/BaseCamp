version 1.0

task NovoutilRename {
  input {
    Boolean? original
    Boolean? id
    File? excise
    Boolean? reorder
    String assembly_report_dot_txt
    String assembly_regions_dot_txt
    File bed_slash_vcf_file
  }
  command <<<
    novoutil rename \
      ~{assembly_report_dot_txt} \
      ~{assembly_regions_dot_txt} \
      ~{bed_slash_vcf_file} \
      ~{if (original) then "--original" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if defined(excise) then ("--excise " +  '"' + excise + '"') else ""} \
      ~{if (reorder) then "--reorder" else ""}
  >>>
  parameter_meta {
    original: "Assembly Report column name originally in the Chrom attribute.\\nChoose from:\\nSequence-Name, GenBank-Accn, RefSeq-Accn, UCSC-style-name\\nDefault is 'RefSeq-Accn'"
    id: "Report or Region column name to replace the Chrom attribute.\\nChoose from assembly_report columns:\\nSequence-Name, GenBank-Accn, RefSeq-Accn, UCSC-style-name\\nDefault is not to change the name."
    excise: "Exclude some sequence types from output file\\nWhere <type> is one of MT, HLA, unplaced, unlocalised, or alt-scaffold\\nAny sequence with a UCSC-Style-Name of 'na' is also excised from the file."
    reorder: "Reorder sequences (Chrom) to match assembly_report.txt order.\\nAssumes lines are grouped by Chrom attribute. If not sort before using this function.\\n"
    assembly_report_dot_txt: ""
    assembly_regions_dot_txt: ""
    bed_slash_vcf_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_excise = "${in_excise}"
  }
}