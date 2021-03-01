version 1.0

task Coocmutbamscan {
  input {
    String? samples
    String? cram_alignment_files
    File? prefix
    File? json
    File? yaml
    File? tsv
    Boolean? dump
  }
  command <<<
    cooc_mutbamscan \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(cram_alignment_files) then ("-a " +  '"' + cram_alignment_files + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{if defined(yaml) then ("--yaml " +  '"' + yaml + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if (dump) then "--dump" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cojac:0.1--0"
  }
  parameter_meta {
    samples: "V-pipe samples list tsv"
    cram_alignment_files: "/CRAM [BAM/CRAM ...], --alignments BAM/CRAM [BAM/CRAM ...]\\nalignment files"
    prefix: "V-pipe work directory prefix for where to look at\\nalign files when using TSV samples list"
    json: "output results to as JSON file"
    yaml: "output results to as yaml file"
    tsv: "output results to as (raw) tsv file"
    dump: "dump the python object to the terminal"
  }
  output {
    File out_stdout = stdout()
    File out_json = "${in_json}"
    File out_yaml = "${in_yaml}"
    File out_tsv = "${in_tsv}"
  }
}