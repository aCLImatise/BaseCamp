version 1.0

task ProteinsNotInLibrary.py {
  input {
    String? fast_a
    String? csv_file_column
    String? out
    String var_3
    String script
    String to
    String display
    String which
    String proteins
    String were
    String not
    String present
    String var_12
    String var_13
    String library_dot
  }
  command <<<
    proteins_not_in_library.py \
      ~{var_3} \
      ~{script} \
      ~{to} \
      ~{display} \
      ~{which} \
      ~{proteins} \
      ~{were} \
      ~{not} \
      ~{present} \
      ~{var_12} \
      ~{var_13} \
      ~{library_dot} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(csv_file_column) then ("--in " +  '"' + csv_file_column + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "A fasta file"
    csv_file_column: "A csv file with the column ProteinName"
    out: "A csv output file containing all proteins not in the csv file"
    var_3: ""
    script: ""
    to: ""
    display: ""
    which: ""
    proteins: ""
    were: ""
    not: ""
    present: ""
    var_12: ""
    var_13: ""
    library_dot: ""
  }
}