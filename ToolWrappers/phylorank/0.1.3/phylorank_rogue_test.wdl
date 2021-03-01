version 1.0

task PhylorankRogueTest {
  input {
    String? out_group_tax_on
    Boolean? decorate
    String input_tree_dir
    String taxonomy_file
    String output_dir
  }
  command <<<
    phylorank rogue_test \
      ~{input_tree_dir} \
      ~{taxonomy_file} \
      ~{output_dir} \
      ~{if defined(out_group_tax_on) then ("--outgroup_taxon " +  '"' + out_group_tax_on + '"') else ""} \
      ~{if (decorate) then "--decorate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_group_tax_on: "taxon to use as outgroup (e.g., d__Archaea); imples\\ntree should be rooted"
    decorate: "indicates trees should be decorated"
    input_tree_dir: "directory containing trees to assess incongruence over"
    taxonomy_file: "file indicating taxonomy of extant taxa"
    output_dir: "desired output directory for generated files"
  }
  output {
    File out_stdout = stdout()
  }
}