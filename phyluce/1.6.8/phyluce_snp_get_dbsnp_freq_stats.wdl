version 1.0

task PhyluceSnpGetDbsnpFreqStats {
  input {
    String? dbsnp
    String? xml
    String? var_output
    String? output_two
    String? dupe_file
  }
  command <<<
    phyluce_snp_get_dbsnp_freq_stats \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(xml) then ("--xml " +  '"' + xml + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(dupe_file) then ("--dupefile " +  '"' + dupe_file + '"') else ""}
  >>>
  parameter_meta {
    dbsnp: "CSV input from dbSNP giving SNP positions within UCE"
    xml: "The XML file holiding locus data from dbSNP"
    var_output: "The output file"
    output_two: "The output file"
    dupe_file: "The path to a lastz file of lastz-against-self results"
  }
}