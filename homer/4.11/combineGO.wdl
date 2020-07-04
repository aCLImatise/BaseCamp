version 1.0

task CombineGO.pl {
  input {
    File? filename_join_values
    Directory? findmotifspl_output_directories
    Boolean? top
    Boolean? column
    Boolean? ratio
  }
  command <<<
    combineGO.pl \
      ~{if defined(filename_join_values) then ("-f " +  '"' + filename_join_values + '"') else ""} \
      ~{if defined(findmotifspl_output_directories) then ("-d " +  '"' + findmotifspl_output_directories + '"') else ""} \
      ~{true="-top" false="" top} \
      ~{true="-column" false="" column} \
      ~{true="-ratio" false="" ratio}
  >>>
  parameter_meta {
    filename_join_values: "(Filename to join enrichment values from)"
    findmotifspl_output_directories: "[directory2] ... (findMotifs.pl output directories to join)"
    top: "<#> (Only keep top # terms per directory, default: keep all)"
    column: "<#> (Column in files to join, default: 4)"
    ratio: "(return log2 ratio target/background if using motifs/knownResults.txt) -pseudoFraction <#> (Default: 2%)"
  }
}