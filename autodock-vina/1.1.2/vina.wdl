version 1.0

task Vina {
  input {
    String? receptor
    String? flex
    String? ligand
    String? center_x
    String? center_y
    String? center_z
    Int? size_x
    Int? size_y
    Int? size_z
    File? out
    File? log
    Int? cpu
    String? seed
    Int? exhaustive_ness
    Int? num_modes
    Int? energy_range
    String? config
    Boolean? help_advanced
  }
  command <<<
    vina \
      ~{if defined(receptor) then ("--receptor " +  '"' + receptor + '"') else ""} \
      ~{if defined(flex) then ("--flex " +  '"' + flex + '"') else ""} \
      ~{if defined(ligand) then ("--ligand " +  '"' + ligand + '"') else ""} \
      ~{if defined(center_x) then ("--center_x " +  '"' + center_x + '"') else ""} \
      ~{if defined(center_y) then ("--center_y " +  '"' + center_y + '"') else ""} \
      ~{if defined(center_z) then ("--center_z " +  '"' + center_z + '"') else ""} \
      ~{if defined(size_x) then ("--size_x " +  '"' + size_x + '"') else ""} \
      ~{if defined(size_y) then ("--size_y " +  '"' + size_y + '"') else ""} \
      ~{if defined(size_z) then ("--size_z " +  '"' + size_z + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(exhaustive_ness) then ("--exhaustiveness " +  '"' + exhaustive_ness + '"') else ""} \
      ~{if defined(num_modes) then ("--num_modes " +  '"' + num_modes + '"') else ""} \
      ~{if defined(energy_range) then ("--energy_range " +  '"' + energy_range + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (help_advanced) then "--help_advanced" else ""}
  >>>
  parameter_meta {
    receptor: "rigid part of the receptor (PDBQT)"
    flex: "flexible side chains, if any (PDBQT)"
    ligand: "ligand (PDBQT)"
    center_x: "X coordinate of the center"
    center_y: "Y coordinate of the center"
    center_z: "Z coordinate of the center"
    size_x: "size in the X dimension (Angstroms)"
    size_y: "size in the Y dimension (Angstroms)"
    size_z: "size in the Z dimension (Angstroms)"
    out: "output models (PDBQT), the default is chosen based on\\nthe ligand file name"
    log: "optionally, write log file"
    cpu: "the number of CPUs to use (the default is to try to\\ndetect the number of CPUs or, failing that, use 1)"
    seed: "explicit random seed"
    exhaustive_ness: "(=8) exhaustiveness of the global search (roughly\\nproportional to time): 1+"
    num_modes: "(=9)      maximum number of binding modes to generate"
    energy_range: "(=3)   maximum energy difference between the best binding\\nmode and the worst one displayed (kcal/mol)"
    config: "the above options can be put here"
    help_advanced: "display usage summary with advanced options"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}