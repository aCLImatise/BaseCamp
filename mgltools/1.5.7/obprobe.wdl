version 1.0

task Obprobe {
  input {
    String? step_size
    String? padding
    String carbonyl_oxygen_hba
    String hydroxyl_hydrogen_hbd
    String _phenyl_carbon
  }
  command <<<
    obprobe \
      ~{carbonyl_oxygen_hba} \
      ~{hydroxyl_hydrogen_hbd} \
      ~{_phenyl_carbon} \
      ~{if defined(step_size) then ("-s " +  '"' + step_size + '"') else ""} \
      ~{if defined(padding) then ("-p " +  '"' + padding + '"') else ""}
  >>>
  parameter_meta {
    step_size: "step size"
    padding: "padding"
    carbonyl_oxygen_hba: "-0.57     carbonyl oxygen (HBA)"
    hydroxyl_hydrogen_hbd: "0.4      hydroxyl hydrogen (HBD)"
    _phenyl_carbon: "0.0      phenyl carbon (hydrophobic)"
  }
}