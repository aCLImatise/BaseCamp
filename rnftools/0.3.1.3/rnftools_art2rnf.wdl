version 1.0

task RnftoolsArt2rnf {
  input {
    File? sam
    File? rnf_fast_q
    File? fa_idx
    Int? genome_id
    Boolean? allow_unmapped
    String? simulator_name
  }
  command <<<
    rnftools art2rnf \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(rnf_fast_q) then ("--rnf-fastq " +  '"' + rnf_fast_q + '"') else ""} \
      ~{if defined(fa_idx) then ("--faidx " +  '"' + fa_idx + '"') else ""} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""} \
      ~{if (allow_unmapped) then "--allow-unmapped" else ""} \
      ~{if defined(simulator_name) then ("--simulator-name " +  '"' + simulator_name + '"') else ""}
  >>>
  parameter_meta {
    sam: "Input SAM/BAM with true (expected) alignments of the\\nreads (- for standard input)."
    rnf_fast_q: "Output FASTQ file (- for standard output)."
    fa_idx: "FAI index of the reference FASTA file (- for standard\\ninput). It can be created using 'samtools faidx'."
    genome_id: "Genome ID in RNF (default: 1)."
    allow_unmapped: "Allow unmapped reads."
    simulator_name: "Name of the simulator (for RNF).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_rnf_fast_q = "${in_rnf_fast_q}"
  }
}