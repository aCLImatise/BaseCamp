version 1.0

task MatamAssembly.py {
  input {
    String? input_fast_q
    String? ref_db
    String? out_dir
    Boolean? verbose
    String? cpu
    Int? max_memory
    Int? best
    String? evalue
    String? score_threshold
    Boolean? straight_mode
    Int? coverage_threshold
    String? min_identity
    Int? min_overlap_length
    Int? min_read_node
    Int? min_overlap_edge
    Int? seed
    Float? quorum
    String? assembler
    String? read_correction
    Boolean? contigs_binning
    Int? min_scaffold_length
    Boolean? perform_taxonomic_assignment
    String? training_model
    String? rdp_cut_off
    Boolean? keep_tmp
    Boolean? debug
    String? resume_from
    Boolean? filter_only
  }
  command <<<
    matam_assembly.py \
      ~{if defined(input_fast_q) then ("--input_fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(ref_db) then ("--ref_db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(best) then ("--best " +  '"' + best + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{true="--straight_mode" false="" straight_mode} \
      ~{if defined(coverage_threshold) then ("--coverage_threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_overlap_length) then ("--min_overlap_length " +  '"' + min_overlap_length + '"') else ""} \
      ~{if defined(min_read_node) then ("--min_read_node " +  '"' + min_read_node + '"') else ""} \
      ~{if defined(min_overlap_edge) then ("--min_overlap_edge " +  '"' + min_overlap_edge + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(quorum) then ("--quorum " +  '"' + quorum + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(read_correction) then ("--read_correction " +  '"' + read_correction + '"') else ""} \
      ~{true="--contigs_binning" false="" contigs_binning} \
      ~{if defined(min_scaffold_length) then ("--min_scaffold_length " +  '"' + min_scaffold_length + '"') else ""} \
      ~{true="--perform_taxonomic_assignment" false="" perform_taxonomic_assignment} \
      ~{if defined(training_model) then ("--training_model " +  '"' + training_model + '"') else ""} \
      ~{if defined(rdp_cut_off) then ("--rdp_cutoff " +  '"' + rdp_cut_off + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--debug" false="" debug} \
      ~{if defined(resume_from) then ("--resume_from " +  '"' + resume_from + '"') else ""} \
      ~{true="--filter_only" false="" filter_only}
  >>>
  parameter_meta {
    input_fast_q: "Input reads file (fasta or fastq format)"
    ref_db: "MATAM ref db. Default is $MATAM_DIR/db/SILVA_128_SSURef_NR95"
    out_dir: "Output directory.Default will be \"matam_assembly\""
    verbose: "Increase verbosity"
    cpu: "Max number of CPU to use. Default is 1 cpu"
    max_memory: "Maximum memory to use (in MBi). Default is 10000 MBi"
    best: "Get up to --best good alignments per read. Default is 10"
    evalue: "Max e-value to keep an alignment for. Default is 1e-05"
    score_threshold: "Score threshold (real between 0 and 1). Default is 0.9"
    straight_mode: "Use straight mode filtering. Default is geometric mode"
    coverage_threshold: "Ref coverage threshold. By default set to 0 to desactivate filtering"
    min_identity: "Minimum identity of an overlap between 2 reads. Default is 1.0"
    min_overlap_length: "Minimum length of an overlap. Default is 50"
    min_read_node: "Minimum number of read to keep a node. Default is 1"
    min_overlap_edge: "Minimum number of overlap to keep an edge. Default is 1"
    seed: "Seed to initialize random generator. Default is picking seed from system time"
    quorum: "Quorum for LCA computing. Has to be between 0.51 and 1. Default is 0.51"
    assembler: "Select the assembler to be used. Default is SGA"
    read_correction: "Set the assembler read correction step. 'auto' means assemble the components with read correction enabled when the components coverage are sufficient (20X) and assemble the other components without read correction. Default is auto"
    contigs_binning: "Experimental. Perform contigs binning during scaffolding."
    min_scaffold_length: "Filter out small scaffolds"
    perform_taxonomic_assignment: "Do the taxonomic assignment"
    training_model: "The training model used for taxonomic assignment. Default is 16srrna"
    rdp_cut_off: "Sequences assigned (by RDP) with a confidence score < 0.8 (at genus level) will be tagged as an artificial \"unclassified\" taxon"
    keep_tmp: "Do not remove tmp files"
    debug: "Output debug infos"
    resume_from: "Try to resume from given step. Steps are: reads_mapping, alignments_filtering, overlap_graph_building, graph_compaction, contigs_assembly, scaffolding, abundance_calculation, taxonomic_assignment"
    filter_only: "Perform only the first step of MATAM (i.e Reads mapping against ref db with sortmerna to filter the reads). Relevant options for this step correspond to the \"Read mapping\" section."
  }
}