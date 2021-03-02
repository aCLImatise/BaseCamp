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
    String? summary
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
    docker: "None"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    input_fast_a: "The cluster sequences (format: fasta)."
    input_biom: "The abundance file for clusters by sample (format:\\nBIOM)."
    input_count: "The abundance file for clusters by sample (format:\\ncount)."
    non_chimera: "sequences file without chimera (format: fasta).\\n[Default: non_chimera.fasta]"
    out_abundance: "Abundance file without chimera (format: BIOM or\\ncount)."
    summary: "Report of the results (format: HTML). [Default:\\nsummary.html]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}