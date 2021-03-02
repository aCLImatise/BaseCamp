version 1.0

task Anviscriptcalculatepnpsratio {
  input {
    File? engine
    File? sa_av_table
    File? scv_table
    File? contigs_db
    Float? min_departure_from_consensus
    Int? minimum_num_variants
    Int? min_coverage
    File? output_dir
    Boolean? no_gene
    String pn_ps_data
  }
  command <<<
    anvi_script_calculate_pn_ps_ratio \
      ~{pn_ps_data} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if defined(sa_av_table) then ("--saav-table " +  '"' + sa_av_table + '"') else ""} \
      ~{if defined(scv_table) then ("--scv-table " +  '"' + scv_table + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(min_departure_from_consensus) then ("--min-departure-from-consensus " +  '"' + min_departure_from_consensus + '"') else ""} \
      ~{if defined(minimum_num_variants) then ("--minimum-num-variants " +  '"' + minimum_num_variants + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (no_gene) then "--no-gene" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    engine: "and the output filename."
    sa_av_table: "Filepath to the SAAV table. (default: None)"
    scv_table: "Filepath to the SCV table. (default: None)"
    contigs_db: "Filepath to the contigs database used to generate\\nvariability tables. (default: None)"
    min_departure_from_consensus: "Variants (either SCVs or SAAVs) will be ignored if\\nthey have a departure from consensus less than this\\nvalue. Note: Keep in mind you may have already\\nsupplied this parameter during anvi-gen-variability-\\nprofile. The default value is 0.10."
    minimum_num_variants: "Ignore genes with less than this number of single\\ncodon variants. This avoids being impressed by pN/pS\\nvalues of infinite, when in reality the gene had a\\nsingle SAAV and no synonymous SCVs. The default is 4\\nto ensure a default value with some level of\\nstatistical importance."
    min_coverage: "If the coverage value at a codon is less than this\\namount, any SAAVs or SCVs associated with it will be\\nignored. The default is 30."
    output_dir: "Directory path for output files (default: None)"
    no_gene: "Normally, a value is provided for each sample-gene\\ncombination. So if you have 10 genes and 100 samples,\\nyou would get 10*100=1000 separate values. If this\\nflag is provided, the output is not subdivided on a\\nper-gene basis, and instead you will get 1 aggregated\\nvalue for each sample. (default: False)"
    pn_ps_data: "🍺 More on `anvi-script-calculate-pn-ps-ratio`:"
  }
  output {
    File out_stdout = stdout()
    File out_engine = "${in_engine}"
    File out_output_dir = "${in_output_dir}"
  }
}