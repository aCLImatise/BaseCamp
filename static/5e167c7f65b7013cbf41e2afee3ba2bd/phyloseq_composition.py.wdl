version 1.0

task PhyloseqCompositionpy {
  input {
    Boolean? debug
    String? var_exp
    Int? taxa_rank_one
    Boolean? s_one
    Int? taxa_rank_two
    Int? number_of_tax_a
    File? r_data
    File? html
    File? log_file
  }
  command <<<
    phyloseq_composition_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var_exp) then ("--varExp " +  '"' + var_exp + '"') else ""} \
      ~{if defined(taxa_rank_one) then ("--taxaRank1 " +  '"' + taxa_rank_one + '"') else ""} \
      ~{if (s_one) then "-s1" else ""} \
      ~{if defined(taxa_rank_two) then ("--taxaRank2 " +  '"' + taxa_rank_two + '"') else ""} \
      ~{if defined(number_of_tax_a) then ("--numberOfTaxa " +  '"' + number_of_tax_a + '"') else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var_exp: "The experiment variable used to split plot."
    taxa_rank_one: "Select taxonomic rank name to subset your data. [ex:\\nKingdom]"
    s_one: "[TAXASET1 [TAXASET1 ...]], --taxaSet1 [TAXASET1 [TAXASET1 ...]]\\nSelect taxon name among taxaRank1 to subset your data.\\n[ex: Bacteria]"
    taxa_rank_two: "Select sub taxonomic rank name to aggregate your data.\\n[ex: Phylum]\\\""
    number_of_tax_a: "The number of the most abundant taxa to keep at\\ntaxaRank2. [ex: 9]\\\""
    r_data: "The path of RData file containing a phyloseq object-\\nthe result of FROGS Phyloseq Import Data"
    html: "The HTML file containing the graphs. [Default:\\nphyloseq_composition.nb.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}