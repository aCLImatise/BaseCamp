version 1.0

task Taxsbp {
  input {
    File? input_file
    File? output_file
    File? nodes_file
    File? merged_file
    Int? bin_len
    Int? bins
    String? fragment_len
    Int? overlap_len
    String? pre_cluster
    String? bin_exclusive
    String? specialization
    File? update_file
    Boolean? allow_merge
    Boolean? silent
  }
  command <<<
    taxsbp \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(nodes_file) then ("--nodes-file " +  '"' + nodes_file + '"') else ""} \
      ~{if defined(merged_file) then ("--merged-file " +  '"' + merged_file + '"') else ""} \
      ~{if defined(bin_len) then ("--bin-len " +  '"' + bin_len + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(fragment_len) then ("--fragment-len " +  '"' + fragment_len + '"') else ""} \
      ~{if defined(overlap_len) then ("--overlap-len " +  '"' + overlap_len + '"') else ""} \
      ~{if defined(pre_cluster) then ("--pre-cluster " +  '"' + pre_cluster + '"') else ""} \
      ~{if defined(bin_exclusive) then ("--bin-exclusive " +  '"' + bin_exclusive + '"') else ""} \
      ~{if defined(specialization) then ("--specialization " +  '"' + specialization + '"') else ""} \
      ~{if defined(update_file) then ("--update-file " +  '"' + update_file + '"') else ""} \
      ~{if (allow_merge) then "--allow-merge" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/taxsbp:1.1.1--py_0"
  }
  parameter_meta {
    input_file: "Tab-separated with the fields: sequence id <tab>\\nsequence length <tab> taxonomic id [<tab>\\nspecialization]"
    output_file: "Path to the output tab-separated file. Fields:\\nsequence id <tab> sequence start <tab> sequence end\\n<tab> sequence length <tab> taxonomic id <tab> bin id\\n[<tab> specialization]. Default: STDOUT"
    nodes_file: "nodes.dmp from NCBI Taxonomy"
    merged_file: "merged.dmp from NCBI Taxonomy"
    bin_len: "Maximum bin length (in bp). Use this parameter insted\\nof -b to define the number of bins. Default: length of\\nthe biggest group [Mutually exclusive -b]"
    bins: "Approximate number of bins (estimated by total\\nlength/bin number). [Mutually exclusive -l]"
    fragment_len: "Fragment sequences into pieces"
    overlap_len: "Overlap length between fragments [Only valid with -a]"
    pre_cluster: "Pre-cluster sequences into any existing rank, leaves\\nor specialization. Entries will not be divided in bins\\n['leaves',specialization name,rank name]"
    bin_exclusive: "Make bins rank, leaves or specialization exclusive.\\nBins will not have mixed entries. When the chosen rank\\nis not present on a sequence lineage, this sequence\\nwill be leaf/specialization exclusive.\\n['leaves',specialization name,rank name]"
    specialization: "Specialization name (e.g. assembly, strain). If given,\\nTaxSBP will cluster entries on a specialized level\\nafter the leaf. The specialization identifier should\\nbe provided as an extra collumn in the input_file and\\nshould respect the taxonomic hiercharchy: One leaf can\\nhave multiple specializations but a specialization is\\npresent in only one leaf"
    update_file: "Previously generated clusters to be updated. Output\\nonly new sequences"
    allow_merge: "When updating, allow merging of existing bins. Will\\noutput the whole set, not only new bins"
    silent: "Do not print warning to STDERR"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}