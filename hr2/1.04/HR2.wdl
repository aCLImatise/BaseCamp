version 1.0

task HR2.exe {
  input {
    String key_mass_decimals
  }
  command <<<
    HR2.exe \
      ~{key_mass_decimals}
  >>>
  parameter_meta {
    key_mass_decimals: "key   mass (6 decimals shown)"
  }
}