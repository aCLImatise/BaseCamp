version 1.0

task MatamAssemblypy {
  input {
    File? input_fast_q
    File? ref_db
    Directory? out_dir
    Boolean? verbose
    Int? cpu
    Int? max_memory
    Int? best
    Int? evalue
    Float? score_threshold
    Boolean? straight_mode
    Int? coverage_threshold
    Float? min_identity
    Int? min_overlap_length
    Int? min_read_node
    Int? min_overlap_edge
    Int? seed
    Float? quorum
    String? assembler
    String? read_correction
    Boolean? contigs_binning
    Boolean? perform_taxonomic_assignment
    String? training_model
    Float? rdp_cut_off
    Boolean? keep_tmp
    Boolean? debug
    String? resume_from
    Boolean? filter_only
    String scaffolding_dot
  }
  command <<<
    matam_assembly_py \
      ~{scaffolding_dot} \
      ~{if defined(input_fast_q) then ("--input_fastq " +  '"' + input_fast_q + '"') else ""} \
      ~{if defined(ref_db) then ("--ref_db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(best) then ("--best " +  '"' + best + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{if (straight_mode) then "--straight_mode" else ""} \
      ~{if defined(coverage_threshold) then ("--coverage_threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_overlap_length) then ("--min_overlap_length " +  '"' + min_overlap_length + '"') else ""} \
      ~{if defined(min_read_node) then ("--min_read_node " +  '"' + min_read_node + '"') else ""} \
      ~{if defined(min_overlap_edge) then ("--min_overlap_edge " +  '"' + min_overlap_edge + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(quorum) then ("--quorum " +  '"' + quorum + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(read_correction) then ("--read_correction " +  '"' + read_correction + '"') else ""} \
      ~{if (contigs_binning) then "--contigs_binning" else ""} \
      ~{if (perform_taxonomic_assignment) then "--perform_taxonomic_assignment" else ""} \
      ~{if defined(training_model) then ("--training_model " +  '"' + training_model + '"') else ""} \
      ~{if defined(rdp_cut_off) then ("--rdp_cutoff " +  '"' + rdp_cut_off + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(resume_from) then ("--resume_from " +  '"' + resume_from + '"') else ""} \
      ~{if (filter_only) then "--filter_only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fast_q: "Input reads file (fasta or fastq format)"
    ref_db: "MATAM ref db. Default is\\n$MATAM_DIR/db/SILVA_128_SSURef_NR95"
    out_dir: "Output directory.Default will be\\n\\\"matam_assembly\\\""
    verbose: "Increase verbosity"
    cpu: "Max number of CPU to use. Default is 1 cpu"
    max_memory: "Maximum memory to use (in MBi). Default is\\n10000 MBi"
    best: "Get up to --best good alignments per read.\\nDefault is 10"
    evalue: "Max e-value to keep an alignment for. Default\\nis 1e-05"
    score_threshold: "Score threshold (real between 0 and 1). Default\\nis 0.9"
    straight_mode: "Use straight mode filtering. Default is\\ngeometric mode"
    coverage_threshold: "Ref coverage threshold. By default set to 0 to\\ndesactivate filtering"
    min_identity: "Minimum identity of an overlap between 2 reads.\\nDefault is 1.0"
    min_overlap_length: "Minimum length of an overlap. Default is 50"
    min_read_node: "Minimum number of read to keep a node. Default\\nis 1"
    min_overlap_edge: "Minimum number of overlap to keep an edge.\\nDefault is 1"
    seed: "Seed to initialize random generator. Default is\\npicking seed from system time"
    quorum: "Quorum for LCA computing. Has to be between\\n0.51 and 1. Default is 0.51"
    assembler: "Select the assembler to be used. Default is SGA"
    read_correction: "Set the assembler read correction step. 'auto'\\nmeans assemble the components with read\\ncorrection enabled when the components coverage\\nare sufficient (20X) and assemble the other\\ncomponents without read correction. Default is\\nauto"
    contigs_binning: "Experimental. Perform contigs binning during"
    perform_taxonomic_assignment: "Do the taxonomic assignment"
    training_model: "The training model used for taxonomic\\nassignment. Default is 16srrna"
    rdp_cut_off: "Sequences assigned (by RDP) with a confidence\\nscore < 0.8 (at genus level) will be tagged as\\nan artificial \\\"unclassified\\\" taxon"
    keep_tmp: "Do not remove tmp files"
    debug: "Output debug infos"
    resume_from: "Try to resume from given step. Steps are:\\nreads_mapping, alignments_filtering,\\noverlap_graph_building, graph_compaction,\\ncontigs_assembly, scaffolding,\\nabundance_calculation, taxonomic_assignment"
    filter_only: "Perform only the first step of MATAM (i.e Reads\\nmapping against ref db with sortmerna to filter\\nthe reads). Relevant options for this step\\ncorrespond to the \\\"Read mapping\\\" section.\\n"
    scaffolding_dot: "--min_scaffold_length MIN_SCAFFOLD_LENGTH                              Filter out small scaffolds"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}