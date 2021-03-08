version 1.0

task Itsxpy {
  input {
    Int? nb_cpus
    Boolean? debug
    String? region
    String? input_fast_a
    File? input_biom
    File? out_fast_a
    File? out_abundance
    File? out_removed
    File? summary
    File? log_file
    Boolean? v
    Int its_two
  }
  command <<<
    itsx_py \
      ~{its_two} \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out-fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(out_abundance) then ("--out-abundance " +  '"' + out_abundance + '"') else ""} \
      ~{if defined(out_removed) then ("--out-removed " +  '"' + out_removed + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    debug: "Keep temporary files to debug program."
    region: "Which fungal ITS region is targeted: either ITS1 or"
    input_fast_a: "The cluster sequences (format: FASTA)."
    input_biom: "The abundance file for clusters by sample (format:\\nBIOM)."
    out_fast_a: "sequences file out from ITSx (format: FASTA).\\n[Default: itsx.fasta]"
    out_abundance: "Abundance file without chimera (format: BIOM ).\\n[Default: itsx_abundance.biom]"
    out_removed: "sequences file removed (format: FASTA). [Default:\\nitsx_removed.fasta]"
    summary: "The HTML file containing the graphs. [Default:\\nitsx.html]"
    log_file: "This output file will contain several informations on\\nexecuted commands.\\n"
    v: ""
    its_two: "--check-its-only      Check only if sequences seem to be an ITS"
  }
  output {
    File out_stdout = stdout()
    File out_out_fast_a = "${in_out_fast_a}"
    File out_log_file = "${in_log_file}"
  }
}