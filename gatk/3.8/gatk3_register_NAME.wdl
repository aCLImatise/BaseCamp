version 1.0

task Gatk3RegisterNAME {
  input {
    String g_atk_three_register
  }
  command <<<
    gatk3-register NAME \
      ~{g_atk_three_register}
  >>>
  parameter_meta {
    g_atk_three_register: ""
  }
}