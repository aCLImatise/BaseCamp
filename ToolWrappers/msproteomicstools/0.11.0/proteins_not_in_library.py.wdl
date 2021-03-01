version 1.0

task ProteinsNotInLibrarypy {
  input {
    File? a_fasta_file
    File? csv_file_proteinname
    File? csv_output_file
    String var_3
    String it
    String script
    String the
    String will
    String var_8
    String search
    String to
    String display
    File var_file
    String for
    String and
    String which
    String column
    String proteins
    String var_then
    String named
    String print
    String were
    String protein_name
    String not
    String var_24
    String all
    String present
    String extra
    String var_28
    String var_29
    String csv
    String entries
  }
  command <<<
    proteins_not_in_library_py \
      ~{var_3} \
      ~{it} \
      ~{script} \
      ~{the} \
      ~{will} \
      ~{var_8} \
      ~{search} \
      ~{to} \
      ~{display} \
      ~{var_file} \
      ~{for} \
      ~{and} \
      ~{which} \
      ~{column} \
      ~{proteins} \
      ~{var_then} \
      ~{named} \
      ~{print} \
      ~{were} \
      ~{protein_name} \
      ~{not} \
      ~{var_24} \
      ~{all} \
      ~{present} \
      ~{extra} \
      ~{var_28} \
      ~{var_29} \
      ~{csv} \
      ~{entries} \
      ~{if defined(a_fasta_file) then ("--fasta " +  '"' + a_fasta_file + '"') else ""} \
      ~{if defined(csv_file_proteinname) then ("--in " +  '"' + csv_file_proteinname + '"') else ""} \
      ~{if defined(csv_output_file) then ("--out " +  '"' + csv_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1"
  }
  parameter_meta {
    a_fasta_file: "A fasta file"
    csv_file_proteinname: "A csv file with the column ProteinName"
    csv_output_file: "A csv output file containing all proteins not in the\\ncsv file\\n"
    var_3: ""
    it: ""
    script: ""
    the: ""
    will: ""
    var_8: ""
    search: ""
    to: ""
    display: ""
    var_file: ""
    for: ""
    and: ""
    which: ""
    column: ""
    proteins: ""
    var_then: ""
    named: ""
    print: ""
    were: ""
    protein_name: ""
    not: ""
    var_24: ""
    all: ""
    present: ""
    extra: ""
    var_28: ""
    var_29: ""
    csv: ""
    entries: ""
  }
  output {
    File out_stdout = stdout()
    File out_csv_output_file = "${in_csv_output_file}"
  }
}