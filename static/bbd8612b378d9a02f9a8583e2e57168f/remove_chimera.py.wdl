version 1.0

task RemoveChimerapy {
  input {
    Int? nb_cpus
    Boolean? debug
    String? input_fast_a
    File? input_biom
    File? input_count
    File? non_chimera
    File? out_abundance
    File? summary
    File? log_file
    Boolean? v
  }
  command <<<
    remove_chimera_py \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_count) then ("--input-count " +  '"' + input_count + '"') else ""} \
      ~{if defined(non_chimera) then ("--non-chimera " +  '"' + non_chimera + '"') else ""} \
      ~{if defined(out_abundance) then ("--out-abundance " +  '"' + out_abundance + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    input_fast_a: "The cluster sequences (format: FASTA)."
    input_biom: "The abundance file for clusters by sample (format:\\nBIOM)."
    input_count: "The counts file for clusters by sample (format: TSV)."
    non_chimera: "sequences file without chimera (format: FASTA).\\n[Default: remove_chimera.fasta]"
    out_abundance: "Abundance file without chimera (format: BIOM or TSV).\\n[Default: remove_chimera_abundance.biom or\\nremove_chimera_abundance.tsv]"
    summary: "The HTML file containing the graphs. [Default:\\nremove_chimera.html]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}