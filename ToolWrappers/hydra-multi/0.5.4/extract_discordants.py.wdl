version 1.0

task ExtractDiscordantspy {
  input {
    File? input_config_file
    String? dataset_name_required
    Int? min_mapq
    Boolean? allow_dups
    Int? mem
  }
  command <<<
    extract_discordants_py \
      ~{if defined(input_config_file) then ("-c " +  '"' + input_config_file + '"') else ""} \
      ~{if defined(dataset_name_required) then ("-d " +  '"' + dataset_name_required + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if (allow_dups) then "--allow_dups" else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    input_config_file: "Input config file (Required)"
    dataset_name_required: "Dataset name (Required)"
    min_mapq: "Minimum MAPQ required on both ends of a pair (def. 0)"
    allow_dups: "Allow duplicate pairs (def. False)"
    mem: "Memory used for sorting (def. 2000000000)"
  }
  output {
    File out_stdout = stdout()
  }
}