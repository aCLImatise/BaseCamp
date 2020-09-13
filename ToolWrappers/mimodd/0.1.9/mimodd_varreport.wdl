version 1.0

task MimoddVarreport {
  input {
    File? ofile
    File? text__oformat
    String? species
    File? link
    String var_report
  }
  command <<<
    mimodd varreport \
      ~{var_report} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(text__oformat) then ("-f " +  '"' + text__oformat + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""}
  >>>
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    text__oformat: "|text, --oformat html|text\\nthe format of the output file (default: html)"
    species: "the name of the species to be assumed when generating\\nannotations"
    link: "file to read species-specific hyperlink formatting\\ninstructions from\\n"
    var_report: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
    File out_text__oformat = "${in_text__oformat}"
  }
}