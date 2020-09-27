version 1.0

task PhizzQuery {
  input {
    File? config
  }
  command <<<
    phizz query \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "-h, --hpo_term TEXT     Specify a hpo term\\n-m, --mim_term TEXT     Specify a omim id\\n-o, --outfile FILENAME  Specify path to outfile\\n-j, --to_json           If output should be in json format\\n--chrom TEXT            The chromosome\\n--start INTEGER\\n--stop INTEGER\\n--help                  Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}