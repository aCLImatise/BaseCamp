version 1.0

task MascotToPepxmlrb {
  input {
    File? replace_output
    File? explicitly_named_output
    File? database
    String? enzyme
    Boolean? short_id
    Int file_two_dot_dat
  }
  command <<<
    mascot_to_pepxml_rb \
      ~{file_two_dot_dat} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if (short_id) then "--shortid" else ""}
  >>>
  parameter_meta {
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    database: "Specify the database to use for this search. Can be a named protk database or the path to a fasta file [sphuman]"
    enzyme: "Enzyme [Trypsin]"
    short_id: "Use short protein id as per Mascot result (default uses full protein ids in fasta file) [false]"
    file_two_dot_dat: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}