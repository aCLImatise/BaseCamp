version 1.0

task DuckPrepareSys {
  input {
    String? protein
    String? ligand
    String? chunk
    String? interaction
    String? seed
    String? gpu_id
    String? force_constant_eq
  }
  command <<<
    duck_prepare_sys \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(ligand) then ("--ligand " +  '"' + ligand + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(interaction) then ("--interaction " +  '"' + interaction + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(gpu_id) then ("--gpu-id " +  '"' + gpu_id + '"') else ""} \
      ~{if defined(force_constant_eq) then ("--force-constant-eq " +  '"' + force_constant_eq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    protein: "Apoprotein in PDB format"
    ligand: "Ligand in mol format"
    chunk: "Chunked protein"
    interaction: "Protein atom to use for ligand interaction."
    seed: "Random seed."
    gpu_id: "GPU ID (optional); if not specified, runs on CPU only."
    force_constant_eq: "Force constant for equilibration.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}