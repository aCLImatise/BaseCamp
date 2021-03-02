version 1.0

task OtuFilterspy {
  input {
    Int? nb_cpus
    Boolean? debug
    Int? nb_biggest_otu
    Int? min_sample_presence
    Int? min_abundance
    File? input_biom
    File? input_fast_a
    String? contaminant
    File? output_biom
    File? output_fast_a
    File? summary
    File? excluded
    File? log_file
    Boolean? v
  }
  command <<<
    otu_filters_py \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(nb_biggest_otu) then ("--nb-biggest-otu " +  '"' + nb_biggest_otu + '"') else ""} \
      ~{if defined(min_sample_presence) then ("--min-sample-presence " +  '"' + min_sample_presence + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(contaminant) then ("--contaminant " +  '"' + contaminant + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(excluded) then ("--excluded " +  '"' + excluded + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    nb_biggest_otu: "Number of most abundant OTUs you want to keep."
    min_sample_presence: "Keep OTU present in at least this number of samples."
    min_abundance: "Minimum percentage/number of sequences, comparing to\\nthe total number of sequences, of an OTU (between 0\\nand 1 if percentage desired)."
    input_biom: "The input BIOM file. (format: BIOM)"
    input_fast_a: "The input FASTA file. (format: FASTA)"
    contaminant: "Use this databank to filter sequence before\\naffiliation. (format: FASTA)"
    output_biom: "The BIOM file output. (format: BIOM) [Default:\\notu_filters_abundance.biom]"
    output_fast_a: "The FASTA output file. (format: FASTA) [Default:\\notu_filters.fasta]"
    summary: "The HTML file containing the graphs. [Default:\\notu_filters.html]"
    excluded: "The TSV file that summarizes all the clusters\\ndiscarded. (format: TSV) [Default:\\notu_filters_excluded.tsv]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_biom = "${in_output_biom}"
    File out_output_fast_a = "${in_output_fast_a}"
    File out_log_file = "${in_log_file}"
  }
}