version 1.0

task VarlociraptorPreprocessVariants {
  input {
    Boolean? omit_indels
    Boolean? omit_insert_size
    Boolean? omit_sn_vs
    String? alignment_properties
    String? bam
    String? candidates
    String? in_del_window
    Int? max_depth
    Int? max_in_del_len
    String? bcf_file_contain
    String? stranded_ness
    String? spurious_del_rate
    String? spurious_del_ext_rate
    String? spurious_ins_rate
    String? spurious_in_sext_rate
    String reference_dot_fast_a
  }
  command <<<
    varlociraptor preprocess variants \
      ~{reference_dot_fast_a} \
      ~{true="--omit-indels" false="" omit_indels} \
      ~{true="--omit-insert-size" false="" omit_insert_size} \
      ~{true="--omit-snvs" false="" omit_sn_vs} \
      ~{if defined(alignment_properties) then ("--alignment-properties " +  '"' + alignment_properties + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(candidates) then ("--candidates " +  '"' + candidates + '"') else ""} \
      ~{if defined(in_del_window) then ("--indel-window " +  '"' + in_del_window + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(max_in_del_len) then ("--max-indel-len " +  '"' + max_in_del_len + '"') else ""} \
      ~{if defined(bcf_file_contain) then ("--output " +  '"' + bcf_file_contain + '"') else ""} \
      ~{if defined(stranded_ness) then ("--strandedness " +  '"' + stranded_ness + '"') else ""} \
      ~{if defined(spurious_del_rate) then ("--spurious-del-rate " +  '"' + spurious_del_rate + '"') else ""} \
      ~{if defined(spurious_del_ext_rate) then ("--spurious-delext-rate " +  '"' + spurious_del_ext_rate + '"') else ""} \
      ~{if defined(spurious_ins_rate) then ("--spurious-ins-rate " +  '"' + spurious_ins_rate + '"') else ""} \
      ~{if defined(spurious_in_sext_rate) then ("--spurious-insext-rate " +  '"' + spurious_in_sext_rate + '"') else ""}
  >>>
  parameter_meta {
    omit_indels: "Don't call Indels."
    omit_insert_size: "Do not consider insert size when calculating support for a variant. Use this flag when processing amplicon data, where indels do not impact the observed insert size"
    omit_sn_vs: "Don't call SNVs."
    alignment_properties: "Alignment properties JSON file for sample. If not provided, properties will be estimated from the given BAM file."
    bam: "BAM file with aligned reads from a single sample."
    candidates: "VCF/BCF file to process (if omitted, read from STDIN)."
    in_del_window: "Number of bases to consider left and right of indel breakpoint when calculating read support. This number should not be too large in order to avoid biases caused by other close variants. Currently implemented maximum value is 64. [default: 64]"
    max_depth: "Maximum number of observations to use for calling. If locus is exceeding this number, downsampling is performed. [default: 200]"
    max_in_del_len: "Omit longer indels when calling. [default: 1000]"
    bcf_file_contain: "BCF file that shall contain the results (if omitted, write to STDOUT)."
    stranded_ness: "Strandedness of sequencing protocol in case of paired-end (opposite strand as usual or same strand as with mate-pair sequencing.) [default: opposite]  [possible values: opposite, same]"
    spurious_del_rate: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see Schirmer et al. BMC Bioinformatics 2016). [default: 5.1e-6]"
    spurious_del_ext_rate: "Extension rate of spurious deletions by the sequencer (Illumina: 0.0, see Schirmer et al. BMC Bioinformatics 2016) [default: 0.0]"
    spurious_ins_rate: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see Schirmer et al. BMC Bioinformatics 2016). [default: 2.8e-6]"
    spurious_in_sext_rate: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see Schirmer et al. BMC Bioinformatics 2016) [default: 0.0]"
    reference_dot_fast_a: ""
  }
}