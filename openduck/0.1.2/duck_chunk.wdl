version 1.0

task DuckChunk {
  input {
    String? protein
    String? ligand
    String? cut_off
    Boolean? ignore_buffers
    String? interaction
  }
  command <<<
    duck_chunk \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(ligand) then ("--ligand " +  '"' + ligand + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (ignore_buffers) then "--ignore-buffers" else ""} \
      ~{if defined(interaction) then ("--interaction " +  '"' + interaction + '"') else ""}
  >>>
  parameter_meta {
    protein: "Apoprotein in PDB format"
    ligand: "Ligand in mol format"
    cut_off: "Cutoff for chunk calculation"
    ignore_buffers: "Do not remove buffers (solvent, ions etc.)"
    interaction: "Protein atom to use for ligand interaction.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}