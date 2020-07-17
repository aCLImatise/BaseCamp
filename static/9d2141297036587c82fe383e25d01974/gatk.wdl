version 1.0

task Gatk {
  input {
    Boolean? g_atk_config_file
  }
  command <<<
    gatk \
      ~{true="--gatk-config-file" false="" g_atk_config_file}
  >>>
  parameter_meta {
    g_atk_config_file: "PATH/TO/GATK/PROPERTIES/FILE"
  }
}