version 1.0

task DeepacstrainGwpaNtcontribs {
  input {
    File? model
    Directory? dir_fragmented_genomes
    Directory? genomes_dir
    Directory? out_dir
    String? ref_mode
    String? train_data
    String? ref_seqs
    Int? read_length
    Int? seq_chunk
    Boolean? gradient
    Boolean? no_check
    String deep_ac
    String gwp_a
    String nt_contribs
  }
  command <<<
    deepac_strain gwpa ntcontribs \
      ~{deep_ac} \
      ~{gwp_a} \
      ~{nt_contribs} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(dir_fragmented_genomes) then ("--dir-fragmented-genomes " +  '"' + dir_fragmented_genomes + '"') else ""} \
      ~{if defined(genomes_dir) then ("--genomes-dir " +  '"' + genomes_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(ref_mode) then ("--ref-mode " +  '"' + ref_mode + '"') else ""} \
      ~{if defined(train_data) then ("--train-data " +  '"' + train_data + '"') else ""} \
      ~{if defined(ref_seqs) then ("--ref-seqs " +  '"' + ref_seqs + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(seq_chunk) then ("--seq-chunk " +  '"' + seq_chunk + '"') else ""} \
      ~{if (gradient) then "--gradient" else ""} \
      ~{if (no_check) then "--no-check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    model: "Model file (.h5)"
    dir_fragmented_genomes: "Directory containing the fragmented genomes (.fasta)"
    genomes_dir: "Directory containing genomes (.genome)"
    out_dir: "Output directory"
    ref_mode: "Modus to calculate reference sequences"
    train_data: "Train data (.npy), necessary to calculate reference\\nsequences if ref_mode is 'GC'"
    ref_seqs: "User provided reference sequences (.fasta) if ref_mode\\nis 'own_ref_file'"
    read_length: "Fragment length"
    seq_chunk: "Sequence chunk size. Decrease for lower memory usage."
    gradient: "Use Integrated Gradients instead of DeepLIFT."
    no_check: "Disable additivity check."
    deep_ac: ""
    gwp_a: ""
    nt_contribs: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}