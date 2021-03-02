version 1.0

task CompareGenespy {
  input {
    File? out
    Int? max_genes
    Int? max_samples
    String? distance
    String? d_type
    Float? cut_off
    File path
  }
  command <<<
    compare_genes_py \
      ~{path} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(max_genes) then ("--max_genes " +  '"' + max_genes + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(d_type) then ("--dtype " +  '"' + d_type + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Path to output file"
    max_genes: "Maximum number of genes to use. Useful for quick tests (use all)"
    max_samples: "Maximum number of samples to use. Useful for quick tests (use all)"
    distance: "Metric to use for computing distances (jaccard)"
    d_type: "Data type to use for comparing genes (presabs)"
    cut_off: "Cutoff to use for determining presence absence (0.35)"
    path: "Path to output from `merge_midas.py genes` for one species\\ndirectory should be named according to a species_id and contains files 'genes_*.txt')"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}