version 1.0

task GenometreetkJkTaxa {
  input {
    String? out_group_ids
    String? model
    String? perc_tax_a
    String? num_replicates
    String? cpus
    Boolean? silent
    String input_tree
    String msa_file
    String output_dir
  }
  command <<<
    genometreetk jk_taxa \
      ~{input_tree} \
      ~{msa_file} \
      ~{output_dir} \
      ~{if defined(out_group_ids) then ("--outgroup_ids " +  '"' + out_group_ids + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(perc_tax_a) then ("--perc_taxa " +  '"' + perc_tax_a + '"') else ""} \
      ~{if defined(num_replicates) then ("--num_replicates " +  '"' + num_replicates + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    out_group_ids: "file indicating outgroup taxa"
    model: "model of evolution to use (default: wag)"
    perc_tax_a: "percentage of taxa to keep (default: 0.5)"
    num_replicates: "number of jackknife replicates to perform (default: 100)"
    cpus: "number of cpus (default: 1)"
    silent: "suppress output"
    input_tree: "tree inferred from original data"
    msa_file: "file containing multiple sequence alignment"
    output_dir: "output directory"
  }
}