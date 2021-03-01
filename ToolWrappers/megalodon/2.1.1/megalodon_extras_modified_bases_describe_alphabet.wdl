version 1.0

task MegalodonExtrasModifiedBasesDescribeAlphabet {
  input {
    Float? guppy_config
    File? guppy_server_path
    Directory? guppy_logs_output_directory
    Boolean? do_not_use_guppy_server
    String? guppy_params
    Int? fast_fives_dir
    File? tai_yaki_model_filename
  }
  command <<<
    megalodon_extras modified_bases describe_alphabet \
      ~{if defined(guppy_config) then ("--guppy-config " +  '"' + guppy_config + '"') else ""} \
      ~{if defined(guppy_server_path) then ("--guppy-server-path " +  '"' + guppy_server_path + '"') else ""} \
      ~{if defined(guppy_logs_output_directory) then ("--guppy-logs-output-directory " +  '"' + guppy_logs_output_directory + '"') else ""} \
      ~{if (do_not_use_guppy_server) then "--do-not-use-guppy-server" else ""} \
      ~{if defined(guppy_params) then ("--guppy-params " +  '"' + guppy_params + '"') else ""} \
      ~{if defined(fast_fives_dir) then ("--fast5s_dir " +  '"' + fast_fives_dir + '"') else ""} \
      ~{if defined(tai_yaki_model_filename) then ("--taiyaki-model-filename " +  '"' + tai_yaki_model_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    guppy_config: "Guppy config. Default: dna_r9.4.1_450bps_modbases_dam-\\ndcm-cpg_hac.cfg"
    guppy_server_path: "Path to guppy server executable. Default: ./ont-\\nguppy/bin/guppy_basecall_server"
    guppy_logs_output_directory: "Directory to output guppy logs. Default: guppy_logs"
    do_not_use_guppy_server: "Use alternative basecalling backend. Either FAST5\\n(default; requires --post_out when running guppy) or\\ntaiyaki (set `--taiyaki-model-filename` to use taiyaki\\nbackend)."
    guppy_params: "Extra guppy server parameters. Main purpose for\\noptimal performance based on compute environment.\\nQuote parameters to avoid them being parsed by\\nmegalodon."
    fast_fives_dir: "Directory containing raw fast5."
    tai_yaki_model_filename: "Taiyaki basecalling model checkpoint file.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_guppy_logs_output_directory = "${in_guppy_logs_output_directory}"
  }
}