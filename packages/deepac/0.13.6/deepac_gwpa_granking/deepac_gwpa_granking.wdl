version 1.0

task DeepacGwpaGranking {
  input {
    Directory? patho_dir
    Directory? gff_dir
    Directory? out_dir
    Boolean? extended
    Int? n_cpus
  }
  command <<<
    deepac gwpa granking \
      ~{if defined(patho_dir) then ("--patho-dir " +  '"' + patho_dir + '"') else ""} \
      ~{if defined(gff_dir) then ("--gff-dir " +  '"' + gff_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if (extended) then "--extended" else ""} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    patho_dir: "Directory containing the pathogenicity scores over all\\ngenomic regions per species (.bedgraph)"
    gff_dir: "Directory containing the annotation data of the\\nspecies (.gff)"
    out_dir: "Output directory"
    extended: "Check for multiple CDSs per gene and unnamed genes."
    n_cpus: "Number of CPU cores.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}