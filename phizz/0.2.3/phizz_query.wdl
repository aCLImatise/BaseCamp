version 1.0

task PhizzQuery {
  input {
    File? config
    String? hpo_term
    String? mim_term
    File? outfile
    Boolean? to_json
    String? chrom
    Int? start
    Int? stop
  }
  command <<<
    phizz query \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(hpo_term) then ("--hpo_term " +  '"' + hpo_term + '"') else ""} \
      ~{if defined(mim_term) then ("--mim_term " +  '"' + mim_term + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (to_json) then "--to_json" else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""}
  >>>
  parameter_meta {
    config: ""
    hpo_term: "Specify a hpo term"
    mim_term: "Specify a omim id"
    outfile: "Specify path to outfile"
    to_json: "If output should be in json format"
    chrom: "The chromosome"
    start: ""
    stop: ""
  }
  output {
    File out_stdout = stdout()
  }
}