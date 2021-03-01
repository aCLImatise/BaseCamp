version 1.0

task PhyluceSnpGetDbsnpFreqStats {
  input {
    String? dbsnp
    File? xml
    File? var_output
    File? output_two
    File? dupe_file
  }
  command <<<
    phyluce_snp_get_dbsnp_freq_stats \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(xml) then ("--xml " +  '"' + xml + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(dupe_file) then ("--dupefile " +  '"' + dupe_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbsnp: "CSV input from dbSNP giving SNP positions within UCE"
    xml: "The XML file holiding locus data from dbSNP"
    var_output: "The output file"
    output_two: "The output file"
    dupe_file: "The path to a lastz file of lastz-against-self results"
  }
  output {
    File out_stdout = stdout()
    File out_var_output = "${in_var_output}"
    File out_output_two = "${in_output_two}"
  }
}