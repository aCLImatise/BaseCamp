version 1.0

task Gnali {
  input {
    File? input_file
    Directory? output_dir
    Directory? force
    Float? database
    Boolean? vcf
    Boolean? predefined_filters_use
    Boolean? additional_filters_use
    File? pop_freqs
    File? config
    Boolean? config_template_gr_ch_three_seven
    Boolean? config_template_gr_ch_three_eight
  }
  command <<<
    gnali \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (predefined_filters_use) then "-p" else ""} \
      ~{if (additional_filters_use) then "-a" else ""} \
      ~{if (pop_freqs) then "--pop_freqs" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (config_template_gr_ch_three_seven) then "--config_template_grch37" else ""} \
      ~{if (config_template_gr_ch_three_eight) then "--config_template_grch38" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnali:1.0.2--py37heccd8a3_0"
  }
  parameter_meta {
    input_file: "File of genes to test. Accepted formats: csv, txt"
    output_dir: "Name of output directory. Default: results-ID/"
    force: "Force existing output folder to be overwritten"
    database: "Database to query. Default: gnomadv2.1.1 Options:\\n['gnomadv2.1.1', 'gnomadv3']"
    vcf: "Generate vcf file for filtered variants"
    predefined_filters_use: "[PREDEFINED_FILTERS [PREDEFINED_FILTERS ...]], --predefined_filters [PREDEFINED_FILTERS [PREDEFINED_FILTERS ...]]\\nPredefined filters. To use multiple, separate them by\\nspaces. Options: {'gnomadv2.1.1': {'homozygous-\\ncontrols': 'controls_nhomalt>0', 'heterozygous-\\ncontrols': 'controls_nhomalt=0', 'homozygous':\\n'nhomalt>0'}, 'gnomadv3': {'homozygous': 'nhomalt>0'}}"
    additional_filters_use: "[ADDITIONAL_FILTERS [ADDITIONAL_FILTERS ...]], --additional_filters [ADDITIONAL_FILTERS [ADDITIONAL_FILTERS ...]]\\nAdditional filters. To use multiple, separate them by\\nspaces. Please enclose each in quotes (ex. \\\"AC>3\\\")"
    pop_freqs: "Get population frequencies (in detailed output file)"
    config: "Use a custom config file. To get started, check out\\nthe --config_template commands"
    config_template_gr_ch_three_seven: "Create a fillable template for a config for a database\\nusing the GRCh37 assembly"
    config_template_gr_ch_three_eight: "Create a fillable template for a config for a database\\nusing the GRCh38 assembly\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_force = "${in_force}"
    File out_pop_freqs = "${in_pop_freqs}"
    File out_config = "${in_config}"
  }
}