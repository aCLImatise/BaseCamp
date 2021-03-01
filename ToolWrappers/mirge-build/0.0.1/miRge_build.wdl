version 1.0

task MiRgebuild {
  input {
    Boolean? genome
    Boolean? mature_mir
    Boolean? hp_in_mir
    Boolean? mature_trna
    Boolean? pre_trna
    Boolean? snorna
    Boolean? rrna
    Boolean? ncrna_other
    Boolean? mrna
    Boolean? spike_in
    Boolean? ann_gff
    File? gen_repeats
    Boolean? mir_db
    Boolean? organism_name
    Boolean? threads
    Boolean? bowtie_path
  }
  command <<<
    miRge_build \
      ~{if (genome) then "--genome" else ""} \
      ~{if (mature_mir) then "--mature-mir" else ""} \
      ~{if (hp_in_mir) then "--hpin-mir" else ""} \
      ~{if (mature_trna) then "--mature-trna" else ""} \
      ~{if (pre_trna) then "--pre-trna" else ""} \
      ~{if (snorna) then "--snorna" else ""} \
      ~{if (rrna) then "--rrna" else ""} \
      ~{if (ncrna_other) then "--ncrna-other" else ""} \
      ~{if (mrna) then "--mrna" else ""} \
      ~{if (spike_in) then "--spike-in" else ""} \
      ~{if (ann_gff) then "--ann-gff" else ""} \
      ~{if (gen_repeats) then "--gen-repeats" else ""} \
      ~{if (mir_db) then "--mir-DB" else ""} \
      ~{if (organism_name) then "--organism-name" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (bowtie_path) then "--bowtie-path" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirge-build:0.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    genome: "genome file in fasta format (.fna, .fasta or .fa) (Required)"
    mature_mir: "mature miRNA file in fasta format (Required)"
    hp_in_mir: "hairpin miRNA file in fasta format (Required)"
    mature_trna: "mature tRNA file in fasta format (Required)"
    pre_trna: "precursor tRNA file in fasta format (Required)"
    snorna: "snoRNA file in fasta format (Required)"
    rrna: "rRNA file in fasta format (Required)"
    ncrna_other: "all other non-coding RNA in fasta format (Required)"
    mrna: "mRNA file in fasta format (Required)"
    spike_in: "user defined custom spike-in file in fasta format (Optional)"
    ann_gff: "miRNA annotation gff file (Required)"
    gen_repeats: "the genome repeats file with .gtf extension (Optional: output however enables novel miRNA prediction in the miRge3.0 pipeline)"
    mir_db: "name of the database to be used (Options: miRBase, miRGeneDB) (Required)"
    organism_name: "name of the organism [Note: name should be one word and use \\\"_\\\" as separator if necessary] (Required)"
    threads: "the number of processors to use for trimming, qc, and alignment (Default: 1)"
    bowtie_path: "path to system's directory containing bowtie binary (Required if bowtie is not in the environment path)"
  }
  output {
    File out_stdout = stdout()
    File out_gen_repeats = "${in_gen_repeats}"
  }
}