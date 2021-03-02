version 1.0

task DeepacGwpaGenomemap {
  input {
    Directory? dir_fragmented_genomes
    Directory? dir_fragmented_genomes_preds
    Directory? genomes_dir
    Directory? out_dir
  }
  command <<<
    deepac gwpa genomemap \
      ~{if defined(dir_fragmented_genomes) then ("--dir-fragmented-genomes " +  '"' + dir_fragmented_genomes + '"') else ""} \
      ~{if defined(dir_fragmented_genomes_preds) then ("--dir-fragmented-genomes-preds " +  '"' + dir_fragmented_genomes_preds + '"') else ""} \
      ~{if defined(genomes_dir) then ("--genomes-dir " +  '"' + genomes_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    dir_fragmented_genomes: "Directory containing the fragmented genomes (.fasta)"
    dir_fragmented_genomes_preds: "Directory containing the predictions (.npy) of the\\nfragmented genomes"
    genomes_dir: "Directory containing genomes (.genome)"
    out_dir: "Output directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}