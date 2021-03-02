version 1.0

task RtgCgsim {
  input {
    String? sdf_containing_genome
    String? name_reads_sdf
    Boolean? abundance
    Boolean? allow_unknowns
    Float? coverage
    File? distribution
    Boolean? dna_fraction
    Int? max_fragment_size
    Int? min_fragment_size
    Float? n_rate
    Int? num_reads
    File? taxonomy_distribution
    Int? cg_read_version
    String? comment
    Boolean? no_names
    Boolean? no_qualities
    File? sam_rg
    Int? seed
    String sdf
  }
  command <<<
    rtg cgsim \
      ~{sdf} \
      ~{if defined(sdf_containing_genome) then ("--input " +  '"' + sdf_containing_genome + '"') else ""} \
      ~{if defined(name_reads_sdf) then ("--output " +  '"' + name_reads_sdf + '"') else ""} \
      ~{if (abundance) then "--abundance" else ""} \
      ~{if (allow_unknowns) then "--allow-unknowns" else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{if (dna_fraction) then "--dna-fraction" else ""} \
      ~{if defined(max_fragment_size) then ("--max-fragment-size " +  '"' + max_fragment_size + '"') else ""} \
      ~{if defined(min_fragment_size) then ("--min-fragment-size " +  '"' + min_fragment_size + '"') else ""} \
      ~{if defined(n_rate) then ("--n-rate " +  '"' + n_rate + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(taxonomy_distribution) then ("--taxonomy-distribution " +  '"' + taxonomy_distribution + '"') else ""} \
      ~{if defined(cg_read_version) then ("--cg-read-version " +  '"' + cg_read_version + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if (no_names) then "--no-names" else ""} \
      ~{if (no_qualities) then "--no-qualities" else ""} \
      ~{if defined(sam_rg) then ("--sam-rg " +  '"' + sam_rg + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sdf_containing_genome: "SDF containing input genome"
    name_reads_sdf: "name for reads output SDF"
    abundance: "if set, the user-supplied distribution\\nrepresents desired abundance"
    allow_unknowns: "allow reads to be drawn from template\\nfragments containing unknown nucleotides"
    coverage: "coverage, must be positive"
    distribution: "file containing probability distribution for\\nsequence selection"
    dna_fraction: "if set, the user-supplied distribution\\nrepresents desired DNA fraction"
    max_fragment_size: "maximum fragment size (Default is 500)"
    min_fragment_size: "minimum fragment size (Default is 350)"
    n_rate: "rate that the machine will generate new\\nunknowns in the read (Default is 0.0)"
    num_reads: "number of reads to be generated"
    taxonomy_distribution: "file containing probability distribution for\\nsequence selection expressed by taxonomy id"
    cg_read_version: "select Complete Genomics read structure\\nversion, 1 (35 bp) or 2 (29 bp)"
    comment: "comment to include in the generated SDF"
    no_names: "do not create read names in the output SDF"
    no_qualities: "do not create read qualities in the output"
    sam_rg: "|FILE         file containing a single valid read group\\nSAM header line or a string in the form\\n\\\"@RG\\tID:READGROUP1\\tSM:BACT_SAMPLE\\tPL:ILLUMINA\\\""
    seed: "seed for random number generator"
    sdf: "-q, --qual-range=STRING          set the range of base quality values"
  }
  output {
    File out_stdout = stdout()
  }
}