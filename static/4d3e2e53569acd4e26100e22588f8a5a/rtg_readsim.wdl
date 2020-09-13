version 1.0

task RtgReadsim {
  input {
    String? sdf_containing_genome
    Int? machine
    String? name_reads_output
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
    Int? left_read_length
    Int? right_read_length
    Int? read_length
    Int? four_five_four_max_total_size
    Int? four_five_four_min_total_size
    Int? ion_max_total_size
    Int? ion_min_total_size
    String? comment
    Boolean? no_names
    Boolean? no_qualities
    File? sam_rg
    Int? seed
    String sdf
  }
  command <<<
    rtg readsim \
      ~{sdf} \
      ~{if defined(sdf_containing_genome) then ("--input " +  '"' + sdf_containing_genome + '"') else ""} \
      ~{if defined(machine) then ("--machine " +  '"' + machine + '"') else ""} \
      ~{if defined(name_reads_output) then ("--output " +  '"' + name_reads_output + '"') else ""} \
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
      ~{if defined(left_read_length) then ("--left-read-length " +  '"' + left_read_length + '"') else ""} \
      ~{if defined(right_read_length) then ("--right-read-length " +  '"' + right_read_length + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(four_five_four_max_total_size) then ("--454-max-total-size " +  '"' + four_five_four_max_total_size + '"') else ""} \
      ~{if defined(four_five_four_min_total_size) then ("--454-min-total-size " +  '"' + four_five_four_min_total_size + '"') else ""} \
      ~{if defined(ion_max_total_size) then ("--ion-max-total-size " +  '"' + ion_max_total_size + '"') else ""} \
      ~{if defined(ion_min_total_size) then ("--ion-min-total-size " +  '"' + ion_min_total_size + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if (no_names) then "--no-names" else ""} \
      ~{if (no_qualities) then "--no-qualities" else ""} \
      ~{if defined(sam_rg) then ("--sam-rg " +  '"' + sam_rg + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    sdf_containing_genome: "SDF containing input genome"
    machine: "select the sequencing technology to model.\\nAllowed values are [illumina_se,\\nillumina_pe, complete_genomics,\\ncomplete_genomics_2, 454_pe, 454_se,\\niontorrent]"
    name_reads_output: "name for reads output SDF"
    abundance: "if set, the user-supplied distribution\\nrepresents desired abundance"
    allow_unknowns: "allow reads to be drawn from template\\nfragments containing unknown nucleotides"
    coverage: "coverage, must be positive"
    distribution: "file containing probability distribution for\\nsequence selection"
    dna_fraction: "if set, the user-supplied distribution\\nrepresents desired DNA fraction"
    max_fragment_size: "maximum fragment size (Default is 250)"
    min_fragment_size: "minimum fragment size (Default is 200)"
    n_rate: "rate that the machine will generate new\\nunknowns in the read (Default is 0.0)"
    num_reads: "number of reads to be generated"
    taxonomy_distribution: "file containing probability distribution for\\nsequence selection expressed by taxonomy id"
    left_read_length: "target read length on the left side"
    right_read_length: "target read length on the right side"
    read_length: "target read length, must be positive"
    four_five_four_max_total_size: "maximum 454 read length (in paired end case\\nthe sum of the left and the right read\\nlengths)"
    four_five_four_min_total_size: "minimum 454 read length (in paired end case\\nthe sum of the left and the right read\\nlengths)"
    ion_max_total_size: "maximum IonTorrent read length"
    ion_min_total_size: "minimum IonTorrent read length"
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