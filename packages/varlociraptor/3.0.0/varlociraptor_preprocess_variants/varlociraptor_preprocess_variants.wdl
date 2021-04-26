version 1.0

task VarlociraptorPreprocessVariants {
  input {
    Boolean? omit_insert_size
    File? alignment_properties
    File? bam
    File? candidates
    Int? max_depth
    Int? min_bam_re_fetch_distance
    File? bcf_file_contain
    File? pair_hmm_mode
    String? stranded_ness
    Int? in_del_window
    Int? reference_buffer_size
    Float? spurious_del_rate
    Float? spurious_del_ext_rate
    Float? spurious_ins_rate
    Float? spurious_in_sext_rate
    String reference_dot_fast_a
  }
  command <<<
    varlociraptor preprocess variants \
      ~{reference_dot_fast_a} \
      ~{if (omit_insert_size) then "--omit-insert-size" else ""} \
      ~{if defined(alignment_properties) then ("--alignment-properties " +  '"' + alignment_properties + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(candidates) then ("--candidates " +  '"' + candidates + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(min_bam_re_fetch_distance) then ("--min-bam-refetch-distance " +  '"' + min_bam_re_fetch_distance + '"') else ""} \
      ~{if defined(bcf_file_contain) then ("--output " +  '"' + bcf_file_contain + '"') else ""} \
      ~{if defined(pair_hmm_mode) then ("--pairhmm-mode " +  '"' + pair_hmm_mode + '"') else ""} \
      ~{if defined(stranded_ness) then ("--strandedness " +  '"' + stranded_ness + '"') else ""} \
      ~{if defined(in_del_window) then ("--indel-window " +  '"' + in_del_window + '"') else ""} \
      ~{if defined(reference_buffer_size) then ("--reference-buffer-size " +  '"' + reference_buffer_size + '"') else ""} \
      ~{if defined(spurious_del_rate) then ("--spurious-del-rate " +  '"' + spurious_del_rate + '"') else ""} \
      ~{if defined(spurious_del_ext_rate) then ("--spurious-delext-rate " +  '"' + spurious_del_ext_rate + '"') else ""} \
      ~{if defined(spurious_ins_rate) then ("--spurious-ins-rate " +  '"' + spurious_ins_rate + '"') else ""} \
      ~{if defined(spurious_in_sext_rate) then ("--spurious-insext-rate " +  '"' + spurious_in_sext_rate + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:3.0.0--hd302352_0"
  }
  parameter_meta {
    omit_insert_size: "Do not consider insert size when calculating support for a variant. Use this flag when\\nprocessing amplicon data, where indels do not impact the observed insert size"
    alignment_properties: "Alignment properties JSON file for sample. If not provided, properties will be estimated from the given BAM\\nfile."
    bam: "BAM file with aligned reads from a single sample."
    candidates: "VCF/BCF file to process (if omitted, read from STDIN)."
    max_depth: "Maximum number of observations to use for calling. If locus is exceeding this number, downsampling is\\nperformed. [default: 200]"
    min_bam_re_fetch_distance: "Base pair distance to last fetched BAM interval such that a refetching is performed instead of reading\\nthrough until the next interval is reached. Making this too small can cause unnecessary random access.\\nMaking this too large can lead to unneccessary iteration over irrelevant records. Benchmarking has shown\\nthat at least for short reads, a value of 1 (e.g. always refetch) does not incur additional costs and is a\\nreasonable default. [default: 1]"
    bcf_file_contain: "BCF file that shall contain the results (if omitted, write to STDOUT)."
    pair_hmm_mode: "PairHMM computation mode (either fast or exact). Fast mode means that only the best alignment path is\\nconsidered for probability calculation. In rare cases, this can lead to wrong results for single reads.\\nHence, we advice to not use it when discrete allele frequences are of interest (0.5, 1.0). For continuous\\nallele frequencies, fast mode should cause almost no deviations from the exact results. Also, if per sample\\nallele frequencies are irrelevant (e.g. in large cohorts), fast mode can be safely used. [default: exact]\\n[possible values: fast, exact]"
    stranded_ness: "Strandedness of sequencing protocol in case of paired-end (opposite strand as usual or same strand as with\\nmate-pair sequencing.) [default: opposite]  [possible values: opposite, same]"
    in_del_window: "Number of bases to consider left and right of breakpoint when calculating read support. Currently\\nimplemented maximum value is 64. [default: 64]"
    reference_buffer_size: "Number of reference sequences to keep in buffer. Use a smaller value to save memory at the expense of\\nsometimes reduced parallelization. [default: 10]"
    spurious_del_rate: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see Schirmer et al. BMC Bioinformatics\\n2016). [default: 5.1e-6]"
    spurious_del_ext_rate: "Extension rate of spurious deletions by the sequencer (Illumina: 0.0, see Schirmer et al. BMC Bioinformatics\\n2016) [default: 0.0]"
    spurious_ins_rate: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see Schirmer et al. BMC Bioinformatics\\n2016). [default: 2.8e-6]"
    spurious_in_sext_rate: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see Schirmer et al. BMC\\nBioinformatics 2016) [default: 0.0]"
    reference_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}