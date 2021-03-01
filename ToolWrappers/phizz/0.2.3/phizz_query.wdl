version 1.0

task PhizzQuery {
  input {
    File? hpo_term
    String? mim_term
    File? outfile
    Boolean? to_json
    String? chrom
  }
  command <<<
    phizz query \
      ~{if defined(hpo_term) then ("--hpo_term " +  '"' + hpo_term + '"') else ""} \
      ~{if defined(mim_term) then ("--mim_term " +  '"' + mim_term + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (to_json) then "--to_json" else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hpo_term: "Specify a hpo term"
    mim_term: "Specify a omim id"
    outfile: "Specify path to outfile"
    to_json: "If output should be in json format"
    chrom: "The chromosome"
  }
  output {
    File out_stdout = stdout()
  }
}