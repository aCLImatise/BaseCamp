version 1.0

task Deseq2Visualizationpy {
  input {
    Boolean? debug
    String? var
    Int? mod_one
    Int? mod_two
    Float? pad_j
    File? phylo_seq_data
    File? dds
    File? html
    File? log_file
  }
  command <<<
    deseq2_visualization_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""} \
      ~{if defined(mod_one) then ("--mod1 " +  '"' + mod_one + '"') else ""} \
      ~{if defined(mod_two) then ("--mod2 " +  '"' + mod_two + '"') else ""} \
      ~{if defined(pad_j) then ("--padj " +  '"' + pad_j + '"') else ""} \
      ~{if defined(phylo_seq_data) then ("--phyloseqData " +  '"' + phylo_seq_data + '"') else ""} \
      ~{if defined(dds) then ("--dds " +  '"' + dds + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var: "variable that you want to test."
    mod_one: "one value of the tested variable you want to compare\\n(if more than 2 value in your experiement variable\\nanalyzed.)"
    mod_two: "second value of the tested variable you want to\\ncompare.(if more than 2 value in your experiement\\nvariable analyzed.)"
    pad_j: "the adjusted p-value threshold to defined OTU as\\ndifferentially abundant. [Default: 0.05]"
    phylo_seq_data: "The path to the RData file containing a phyloseq\\nobject (result of FROGS Phyloseq Import Data)"
    dds: "The path to the Rdata file containing the DESeq dds\\nobject (result of FROGS DESeq2 Preprocess)"
    html: "The HTML file containing the graphs. [Default:\\nDESeq2_visualization.html]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}