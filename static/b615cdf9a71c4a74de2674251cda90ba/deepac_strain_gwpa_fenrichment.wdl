version 1.0

task DeepacstrainGwpaFenrichment {
  input {
    Directory? bed_dir
    File? gff
    Directory? out_dir
    Int? motif_length
    Int? n_cpus
    Boolean? extended
    String deep_ac
    String gwp_a
    String f_enrichment
  }
  command <<<
    deepac_strain gwpa fenrichment \
      ~{deep_ac} \
      ~{gwp_a} \
      ~{f_enrichment} \
      ~{if defined(bed_dir) then ("--bed-dir " +  '"' + bed_dir + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(motif_length) then ("--motif-length " +  '"' + motif_length + '"') else ""} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""} \
      ~{if (extended) then "--extended" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    bed_dir: "Input directory with filter activation values for a\\nspecies (.bed)"
    gff: "Gff file of species"
    out_dir: "Output directory"
    motif_length: "Motif length"
    n_cpus: "Number of CPU cores."
    extended: "Check for multiple CDSs per gene and unnamed genes."
    deep_ac: ""
    gwp_a: ""
    f_enrichment: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}