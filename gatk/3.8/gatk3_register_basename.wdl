version 1.0

task Gatk3RegisterBasename {
  input {
    String g_atk_three_register
  }
  command <<<
    gatk3-register basename \
      ~{g_atk_three_register}
  >>>
  parameter_meta {
    g_atk_three_register: ""
  }
}