version 1.0

task CombineGOpl {
  input {
    File? filename_join_values
    Directory? findmotifspl_output_directories
    Boolean? top
    Boolean? column
    Boolean? ratio
    Boolean? pseudo_fraction
  }
  command <<<
    combineGO_pl \
      ~{if defined(filename_join_values) then ("-f " +  '"' + filename_join_values + '"') else ""} \
      ~{if defined(findmotifspl_output_directories) then ("-d " +  '"' + findmotifspl_output_directories + '"') else ""} \
      ~{if (top) then "-top" else ""} \
      ~{if (column) then "-column" else ""} \
      ~{if (ratio) then "-ratio" else ""} \
      ~{if (pseudo_fraction) then "-pseudoFraction" else ""}
  >>>
  parameter_meta {
    filename_join_values: "(Filename to join enrichment values from)"
    findmotifspl_output_directories: "[directory2] ... (findMotifs.pl output directories to join)"
    top: "<#> (Only keep top # terms per directory, default: keep all)"
    column: "<#> (Column in files to join, default: 4)"
    ratio: "(return log2 ratio target/background if using motifs/knownResults.txt)"
    pseudo_fraction: "<#> (Default: 2%)"
  }
  output {
    File out_stdout = stdout()
  }
}