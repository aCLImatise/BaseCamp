version 1.0

task FusionInspector {
  input {
    String? fusions
    File? left_fq
    File? right_fq
    Directory? genome_lib_dir
    File? samples_file
    Directory? output_dir
    File? out_prefix
    Int? min_junction_reads
    Int? min_sum_frags
    Int? min_novel_junction_support
    Int? min_spanning_frags_only
    String? require_ldas
    Int? max_promiscuity
    Int? min_pct_dom_promiscuity
    Int? min_per_id
    Boolean? only_fusion_reads
    Boolean? capture_genome_alignments
    Boolean? include_trinity
    Boolean? vis
    Boolean? write_intermediate_results
    Boolean? cleanup
    Int? cpu
    Boolean? annotate
    Boolean? examine_coding_effect
    File? aligner_path
    Boolean? fusion_contigs_only
    File? extract_fusion_reads_file
    Boolean? no_remove_dups
    String? far_pseudo_count
    Int? star_max_mate_dist
    Boolean? no_ff_pm
  }
  command <<<
    FusionInspector \
      ~{if defined(fusions) then ("--fusions " +  '"' + fusions + '"') else ""} \
      ~{if defined(left_fq) then ("--left_fq " +  '"' + left_fq + '"') else ""} \
      ~{if defined(right_fq) then ("--right_fq " +  '"' + right_fq + '"') else ""} \
      ~{if defined(genome_lib_dir) then ("--genome_lib_dir " +  '"' + genome_lib_dir + '"') else ""} \
      ~{if defined(samples_file) then ("--samples_file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(min_junction_reads) then ("--min_junction_reads " +  '"' + min_junction_reads + '"') else ""} \
      ~{if defined(min_sum_frags) then ("--min_sum_frags " +  '"' + min_sum_frags + '"') else ""} \
      ~{if defined(min_novel_junction_support) then ("--min_novel_junction_support " +  '"' + min_novel_junction_support + '"') else ""} \
      ~{if defined(min_spanning_frags_only) then ("--min_spanning_frags_only " +  '"' + min_spanning_frags_only + '"') else ""} \
      ~{if defined(require_ldas) then ("--require_LDAS " +  '"' + require_ldas + '"') else ""} \
      ~{if defined(max_promiscuity) then ("--max_promiscuity " +  '"' + max_promiscuity + '"') else ""} \
      ~{if defined(min_pct_dom_promiscuity) then ("--min_pct_dom_promiscuity " +  '"' + min_pct_dom_promiscuity + '"') else ""} \
      ~{if defined(min_per_id) then ("--min_per_id " +  '"' + min_per_id + '"') else ""} \
      ~{if (only_fusion_reads) then "--only_fusion_reads" else ""} \
      ~{if (capture_genome_alignments) then "--capture_genome_alignments" else ""} \
      ~{if (include_trinity) then "--include_Trinity" else ""} \
      ~{if (vis) then "--vis" else ""} \
      ~{if (write_intermediate_results) then "--write_intermediate_results" else ""} \
      ~{if (cleanup) then "--cleanup" else ""} \
      ~{if defined(cpu) then ("--CPU " +  '"' + cpu + '"') else ""} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if (examine_coding_effect) then "--examine_coding_effect" else ""} \
      ~{if defined(aligner_path) then ("--aligner_path " +  '"' + aligner_path + '"') else ""} \
      ~{if (fusion_contigs_only) then "--fusion_contigs_only" else ""} \
      ~{if defined(extract_fusion_reads_file) then ("--extract_fusion_reads_file " +  '"' + extract_fusion_reads_file + '"') else ""} \
      ~{if (no_remove_dups) then "--no_remove_dups" else ""} \
      ~{if defined(far_pseudo_count) then ("--FAR_pseudocount " +  '"' + far_pseudo_count + '"') else ""} \
      ~{if defined(star_max_mate_dist) then ("--STAR_max_mate_dist " +  '"' + star_max_mate_dist + '"') else ""} \
      ~{if (no_ff_pm) then "--no_FFPM" else ""}
  >>>
  parameter_meta {
    fusions: "fusions summary files (list, comma-delimited and no spaces)"
    left_fq: "left (or single) fastq file"
    right_fq: "right fastq file (optional)"
    genome_lib_dir: "genome lib directory - see http://FusionFilter.github.io for details.  Uses env var CTAT_GENOME_LIB as default"
    samples_file: "samples file (format: sample(tab)/path/left.fq(tab)/path/right.fq"
    output_dir: "output directory"
    out_prefix: "output filename prefix"
    min_junction_reads: "minimum number of junction-spanning reads required"
    min_sum_frags: "minimum fusion support = ( # junction_reads + # spanning_frags )"
    min_novel_junction_support: "minimum number of junction reads required if breakpoint lacks involvement of only reference junctions"
    min_spanning_frags_only: "minimum number of spanning frags if no junction reads are found"
    require_ldas: "require long double anchor support for split reads when no spanning frags are found"
    max_promiscuity: "maximum number of partners allowed for a given fusion"
    min_pct_dom_promiscuity: "for promiscuous fusions, those with less than this support of the dominant scoring pair are filtered prior to applying the max_promiscuity filter."
    min_per_id: "minimum percent identity for a fusion-supporting read alignment"
    only_fusion_reads: "include only read alignments in output that support fusion"
    capture_genome_alignments: "reports ref genome alignments too (for debugging only)"
    include_trinity: "include fusion-guided Trinity assembly"
    vis: "generate bam, bed, etc., and generate igv-reports html visualization"
    write_intermediate_results: "generate bam, bed, etc., for intermediate aligner outputs"
    cleanup: "cleanup the fusion inspector workspace, remove intermediate output files"
    cpu: "number of threads for multithreaded processes"
    annotate: "annotate fusions based on known cancer fusions and those found in normal tissues"
    examine_coding_effect: "explore impact of fusions on coding sequences"
    aligner_path: "path to the aligner tool (default: uses PATH setting)"
    fusion_contigs_only: "align reads only to the fusion contigs"
    extract_fusion_reads_file: "file prefix to write fusion evidence reads in fastq format"
    no_remove_dups: "do not exclude duplicate reads"
    far_pseudo_count: "pseudocount to be used in fusion allelic ratio (FAR) computation"
    star_max_mate_dist: "max mate distance and max intron length for STAR"
    no_ff_pm: "do not compute FFPM value - ie. using inspect instead of validate mode, in which case FFPM would not be meaningful given the full sample of reads is not evaluated"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_out_prefix = "${in_out_prefix}"
  }
}