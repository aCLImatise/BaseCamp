version 1.0

task ChakinFeatureLoadGff {
  input {
    String? landmark_type
    String? re_protein
    String? re_protein_capture
    File? fast_a
    Boolean? no_seq_compute
    Boolean? quiet
    Boolean? add_only
    String? protein_id_attr
    String options
  }
  command <<<
    chakin feature load_gff \
      ~{options} \
      ~{if defined(landmark_type) then ("--landmark_type " +  '"' + landmark_type + '"') else ""} \
      ~{if defined(re_protein) then ("--re_protein " +  '"' + re_protein + '"') else ""} \
      ~{if defined(re_protein_capture) then ("--re_protein_capture " +  '"' + re_protein_capture + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (no_seq_compute) then "--no_seq_compute" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (add_only) then "--add_only" else ""} \
      ~{if defined(protein_id_attr) then ("--protein_id_attr " +  '"' + protein_id_attr + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    landmark_type: "Type of the landmarks (will speed up loading if\\nprovided, e.g. contig, should be a term of the\\nSequence ontology)"
    re_protein: "Replacement string for the protein name using\\ncapturing groups defined by --re_protein_capture"
    re_protein_capture: "Regular expression to capture groups in mRNA name\\nto use in --re_protein (e.g. \\\"^(.*?)-R([A-Z]+)$\\\",\\ndefault=\\\"^(.*?)$\\\")  [default: ^(.*?)$]"
    fast_a: "Path to a Fasta containing sequences for some\\nfeatures. When creating a feature, if its\\nsequence is in this fasta file it will be loaded.\\nOtherwise for mRNA and polypeptides it will be\\ncomputed from the genome sequence (if available),\\notherwise it will be left empty."
    no_seq_compute: "Disable the computation of mRNA and polypeptides\\nsequences based on genome sequence and positions."
    quiet: "Hide progress information"
    add_only: "Use this flag if you're not updating existing\\nfeatures, but just adding new features to the\\nselected analysis and organism. It will speedup\\nloading, and reduce memory usage, but might\\nproduce errors in case of already existing\\nfeature."
    protein_id_attr: "Attribute containing the protein uniquename. It\\nis searched at the mRNA level, and if not found\\nat CDS level."
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}