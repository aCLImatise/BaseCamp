version 1.0

task MatamCompareSamplespy {
  input {
    File? samples_file
    String? ouput_contingency_table
    String? output_table_taxonomy
    String script_let_compare
  }
  command <<<
    matam_compare_samples_py \
      ~{script_let_compare} \
      ~{if defined(samples_file) then ("--samples_file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(ouput_contingency_table) then ("--ouput_contingency_table " +  '"' + ouput_contingency_table + '"') else ""} \
      ~{if defined(output_table_taxonomy) then ("--ouput_comparaison_table " +  '"' + output_table_taxonomy + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    samples_file: "A tabulated file with one sample by row. The first\\ncolumn contains the sample id (must be unique) The\\nsecond column contains the fasta path. The abundances\\nmust be present into this file. The third, the rdp\\npath. Paths can be absolute or relative to the current\\nworking directory."
    ouput_contingency_table: "Output a table with the abundance for each sequence"
    output_table_taxonomy: "Output a comparaison table (taxonomy vs samples)\\n"
    script_let_compare: "This script let you compare two or more samples coming from MATAM -- v1.5.1 or"
  }
  output {
    File out_stdout = stdout()
  }
}