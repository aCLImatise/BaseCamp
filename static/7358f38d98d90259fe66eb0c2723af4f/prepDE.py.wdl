version 1.0

task PrepDEpy {
  input {
    File? folder_containing_subdirectories
    String? where_output_default
    Int? length
    String? pattern
    Boolean? cluster
    String? different_prefix_used
    String? key
    Boolean? enable_verbose_processing
    File? legend
    String gene_count_matrix_dot_csv
  }
  command <<<
    prepDE_py \
      ~{gene_count_matrix_dot_csv} \
      ~{if defined(folder_containing_subdirectories) then ("--input " +  '"' + folder_containing_subdirectories + '"') else ""} \
      ~{if defined(where_output_default) then ("-g " +  '"' + where_output_default + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(different_prefix_used) then ("--string " +  '"' + different_prefix_used + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (enable_verbose_processing) then "-v" else ""} \
      ~{if defined(legend) then ("--legend " +  '"' + legend + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stringtie:2.1.5--h7e0af3c_0"
  }
  parameter_meta {
    folder_containing_subdirectories: "a folder containing all sample sub-directories, or a\\ntext file with sample ID and path to its GTF file on\\neach line [default: ./]"
    where_output_default: "where to output the gene count matrix [default:"
    length: "the average read length [default: 75]"
    pattern: "a regular expression that selects the sample\\nsubdirectories"
    cluster: "whether to cluster genes that overlap with different\\ngene IDs, ignoring ones with geneID pattern (see\\nbelow)"
    different_prefix_used: "if a different prefix is used for geneIDs assigned by\\nStringTie [default: MSTRG]"
    key: "if clustering, what prefix to use for geneIDs assigned\\nby this script [default: prepG]"
    enable_verbose_processing: "enable verbose processing"
    legend: "if clustering, where to output the legend file mapping\\ntranscripts to assigned geneIDs [default: legend.csv]\\n"
    gene_count_matrix_dot_csv: "-t T                  where to output the transcript count matrix [default:"
  }
  output {
    File out_stdout = stdout()
    File out_legend = "${in_legend}"
  }
}