version 1.0

task MatamCompareSamples.py {
  input {
    String? samples_file
    String? ouput_contingency_table
    String? ouput_comparaison_table
  }
  command <<<
    matam_compare_samples.py \
      ~{if defined(samples_file) then ("--samples_file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(ouput_contingency_table) then ("--ouput_contingency_table " +  '"' + ouput_contingency_table + '"') else ""} \
      ~{if defined(ouput_comparaison_table) then ("--ouput_comparaison_table " +  '"' + ouput_comparaison_table + '"') else ""}
  >>>
  parameter_meta {
    samples_file: "A tabulated file with one sample by row. The first column contains the sample id (must be unique) The second column contains the fasta path. The abundances must be present into this file. The third, the rdp path. Paths can be absolute or relative to the current working directory."
    ouput_contingency_table: "Output a table with the abundance for each sequence"
    ouput_comparaison_table: "Output a comparaison table (taxonomy vs samples)"
  }
}