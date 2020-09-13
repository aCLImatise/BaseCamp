version 1.0

task Bactopiaversionpy {
  input {
    Directory? bac_topia
    String str
    String fast_ani
    String gt_db
    String phylo_flash
    String roar_y
    String summary
  }
  command <<<
    bactopia_version_py \
      ~{str} \
      ~{fast_ani} \
      ~{gt_db} \
      ~{phylo_flash} \
      ~{roar_y} \
      ~{summary} \
      ~{if defined(bac_topia) then ("--bactopia " +  '"' + bac_topia + '"') else ""}
  >>>
  parameter_meta {
    bac_topia: "Directory where Bactopia repository is stored."
    str: "Name of the Bactopia tool to execute."
    fast_ani: "Pairwise average nucleotide identity"
    gt_db: "Identify marker genes and assign taxonomic classifications"
    phylo_flash: "16s assembly, alignment and tree"
    roar_y: "Pan-genome with optional core-genome tree."
    summary: "A report summarizing Bactopia project"
  }
  output {
    File out_stdout = stdout()
  }
}