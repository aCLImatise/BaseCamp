version 1.0

task TacoRefcomp {
  input {
    String? output_dir
    String? num_processes
    Boolean? cp_at
    String? cp_at_species
    String? cp_at_genome
    String? ref_gtf
    String? test_gtf
    Boolean? v
  }
  command <<<
    taco_refcomp \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_processes) then ("--num-processes " +  '"' + num_processes + '"') else ""} \
      ~{true="--cpat" false="" cp_at} \
      ~{if defined(cp_at_species) then ("--cpat-species " +  '"' + cp_at_species + '"') else ""} \
      ~{if defined(cp_at_genome) then ("--cpat-genome " +  '"' + cp_at_genome + '"') else ""} \
      ~{if defined(ref_gtf) then ("--ref-gtf " +  '"' + ref_gtf + '"') else ""} \
      ~{if defined(test_gtf) then ("--test-gtf " +  '"' + test_gtf + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    output_dir: "Directory for reference comparison output (default: taco_compare)"
    num_processes: "Run tool in parallel with N processes. (note: each core processes 1 chromosome) (default: 1)"
    cp_at: "Run CPAT tool to for coding potential scoring. (CPAT function currently only supports Human, Mouse, and Zebrafish) (WARNING: The CPAT tool can take over an hour) (default: False)"
    cp_at_species: "Select either: human, mouse, zebrafish (default: human)"
    cp_at_genome: "Provide a genome fasta for the genome used to produce assemblies being compared. Required if \"--cpat\" used. CPAT uses this to obtain sequence for the provided transcripts (default: None)"
    ref_gtf: "Reference GTF file to compare against (default: None)"
    test_gtf: "GTF file used for comparison (default: None)"
    v: ""
  }
}