version 1.0

task PrepDE.py {
  input {
    String? parent_directory_textfile
    String? where_output_default
    String? where_output_matrix
    Int? length
    String? pattern
    Boolean? cluster
    String? different_prefix_used
    String? key
    String? legend
  }
  command <<<
    prepDE.py \
      ~{if defined(parent_directory_textfile) then ("--input " +  '"' + parent_directory_textfile + '"') else ""} \
      ~{if defined(where_output_default) then ("-g " +  '"' + where_output_default + '"') else ""} \
      ~{if defined(where_output_matrix) then ("-t " +  '"' + where_output_matrix + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{true="--cluster" false="" cluster} \
      ~{if defined(different_prefix_used) then ("--string " +  '"' + different_prefix_used + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(legend) then ("--legend " +  '"' + legend + '"') else ""}
  >>>
  parameter_meta {
    parent_directory_textfile: "the parent directory of the sample sub-directories or a textfile listing the paths to GTF files [default: ballgown]"
    where_output_default: "where to output the gene count matrix [default: gene_count_matrix.csv"
    where_output_matrix: "where to output the transcript count matrix [default: transcript_count_matrix.csv]"
    length: "the average read length [default: 75]"
    pattern: "a regular expression that selects the sample subdirectories"
    cluster: "whether to cluster genes that overlap with different gene IDs, ignoring ones with geneID pattern (see below)"
    different_prefix_used: "if a different prefix is used for geneIDs assigned by StringTie [default: MSTRG]"
    key: "if clustering, what prefix to use for geneIDs assigned by this script [default: prepG]"
    legend: "if clustering, where to output the legend file mapping transcripts to assigned geneIDs [default: legend.csv]"
  }
}