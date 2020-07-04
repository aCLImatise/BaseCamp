version 1.0

task Gatk3RegisterSUFFIX {
  input {
    String g_atk_three_register
  }
  command <<<
    gatk3-register SUFFIX \
      ~{g_atk_three_register}
  >>>
  parameter_meta {
    g_atk_three_register: ""
  }
}