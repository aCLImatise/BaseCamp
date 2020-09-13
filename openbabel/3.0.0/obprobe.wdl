version 1.0

task Obprobe {
  input {
    Int? step_size
    String? padding
    Int hydroxyl_hydrogen_hbd
    Int phenyl_carbon_hydrophobic
  }
  command <<<
    obprobe \
      ~{hydroxyl_hydrogen_hbd} \
      ~{phenyl_carbon_hydrophobic} \
      ~{if defined(step_size) then ("-s " +  '"' + step_size + '"') else ""} \
      ~{if defined(padding) then ("-p " +  '"' + padding + '"') else ""}
  >>>
  parameter_meta {
    step_size: "step size"
    padding: "padding"
    hydroxyl_hydrogen_hbd: "0.4      hydroxyl hydrogen (HBD)"
    phenyl_carbon_hydrophobic: "0.0      phenyl carbon (hydrophobic)"
  }
  output {
    File out_stdout = stdout()
  }
}