version 1.0

task Bactopiatoolspy {
  input {
    Directory? bac_topia
    String str
    String eggnog
    String fast_ani
    String gt_db
    String is_mapper
    String mash_tree
    String phylo_flash
    String pirate
    String roar_y
    String summary
  }
  command <<<
    bactopia_tools_py \
      ~{str} \
      ~{eggnog} \
      ~{fast_ani} \
      ~{gt_db} \
      ~{is_mapper} \
      ~{mash_tree} \
      ~{phylo_flash} \
      ~{pirate} \
      ~{roar_y} \
      ~{summary} \
      ~{if defined(bac_topia) then ("--bactopia " +  '"' + bac_topia + '"') else ""}
  >>>
  parameter_meta {
    bac_topia: "Directory where Bactopia repository is stored."
    str: "Name of the Bactopia tool to execute."
    eggnog: "Functional annotation using orthologous groups"
    fast_ani: "Pairwise average nucleotide identity"
    gt_db: "Identify marker genes and assign taxonomic classifications"
    is_mapper: "Identify positions of insertion sites"
    mash_tree: "Trees based on Mash distances"
    phylo_flash: "16s assembly, alignment and tree"
    pirate: "Pan-genome with optional core-genome tree"
    roar_y: "Pan-genome with optional core-genome tree"
    summary: "A report summarizing Bactopia project"
  }
  output {
    File out_stdout = stdout()
  }
}