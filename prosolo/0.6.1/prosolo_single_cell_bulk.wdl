version 1.0

task ProsoloSinglecellbulk {
  input {
    Boolean? exclusive_end
    Boolean? omit_fragment_evidence
    Boolean? omit_indels
    Boolean? omit_sn_vs
    Int? bulk_max_n
    Int? bulk_min_n
    File? candidates
    Int? in_del_window
    Int? max_in_del_len
    File? obs
    File? bcf_file_contain
    Int? pile_up_window
    Int? ploidy
    Float? spurious_del_ext_rate
    Float? spurious_in_sext_rate
    Float? spurious_del_rate
    Float? spurious_ins_rate
    String? flags
    String single_cell
    String bulk
  }
  command <<<
    prosolo single_cell_bulk \
      ~{flags} \
      ~{single_cell} \
      ~{bulk} \
      ~{if (exclusive_end) then "--exclusive-end" else ""} \
      ~{if (omit_fragment_evidence) then "--omit-fragment-evidence" else ""} \
      ~{if (omit_indels) then "--omit-indels" else ""} \
      ~{if (omit_sn_vs) then "--omit-snvs" else ""} \
      ~{if defined(bulk_max_n) then ("--bulk-max-n " +  '"' + bulk_max_n + '"') else ""} \
      ~{if defined(bulk_min_n) then ("--bulk-min-n " +  '"' + bulk_min_n + '"') else ""} \
      ~{if defined(candidates) then ("--candidates " +  '"' + candidates + '"') else ""} \
      ~{if defined(in_del_window) then ("--indel-window " +  '"' + in_del_window + '"') else ""} \
      ~{if defined(max_in_del_len) then ("--max-indel-len " +  '"' + max_in_del_len + '"') else ""} \
      ~{if defined(obs) then ("--obs " +  '"' + obs + '"') else ""} \
      ~{if defined(bcf_file_contain) then ("--output " +  '"' + bcf_file_contain + '"') else ""} \
      ~{if defined(pile_up_window) then ("--pileup-window " +  '"' + pile_up_window + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(spurious_del_ext_rate) then ("--spurious-delext-rate " +  '"' + spurious_del_ext_rate + '"') else ""} \
      ~{if defined(spurious_in_sext_rate) then ("--spurious-insext-rate " +  '"' + spurious_in_sext_rate + '"') else ""} \
      ~{if defined(spurious_del_rate) then ("--spurious-del-rate " +  '"' + spurious_del_rate + '"') else ""} \
      ~{if defined(spurious_ins_rate) then ("--spurious-ins-rate " +  '"' + spurious_ins_rate + '"') else ""}
  >>>
  parameter_meta {
    exclusive_end: "Assume that the END tag is exclusive (i.e. it points to the position after the\\nvariant). This is needed, e.g., for DELLY."
    omit_fragment_evidence: "Omit evidence consisting of read pairs with unexpected insert size (insert size\\nparameters will be ignored)."
    omit_indels: "Don't call indels."
    omit_sn_vs: "Don't call SNVs."
    bulk_max_n: "Maximum number of (theoretical) reads to work with in the bulk background, in\\ncase the actual read count for a variant is higher (all read information will\\nbe used, but probabilities will only be computed for all discrete allele\\nfrequencies allowed by the maximum read count provided here). The code will\\nwork with any number above bulk-min-n, but we use the cap of the currently\\nused Lodato amplification bias model for the single cell sample as the\\ndefault. [default: 100]"
    bulk_min_n: "Minimum number of (theoretical) reads to work with in the bulk background, in\\ncase the actual read count for a variant site is lower (in this case,\\nprobabilities will be computed for all discrete allele frequencies allowed by\\nthe minimum read count provided here). The code will work with a minimum of 2,\\nbut for a more even sampling of Event spaces, the default is at 8. [default:\\n8]"
    candidates: "VCF/BCF file to process (if omitted, read from STDIN)."
    in_del_window: "Number of bases to consider left and right of indel breakpoint when\\ncalculating read support. This number should not be too large in order to\\navoid biases caused by other close variants. [default: 100]"
    max_in_del_len: "Omit longer indels when calling [1000]."
    obs: "Optional path where read observations shall be written to. The resulting file\\ncontains a line for each observation with tab-separated values."
    bcf_file_contain: "BCF file that shall contain the results (if omitted, write to STDOUT)."
    pile_up_window: "Window to investigate for evidence left and right of each variant. [default:\\n2500]"
    ploidy: "General ploidy of sampled individual. [default: 2]"
    spurious_del_ext_rate: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\\nSchirmer et al. BMC Bioinformatics 2016). [default: 0.0]"
    spurious_in_sext_rate: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\\nSchirmer et al. BMC Bioinformatics 2016) [0.0]. [default: 0.0]"
    spurious_del_rate: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see\\nSchirmer et al. BMC Bioinformatics 2016). [default: 5.1e-6]"
    spurious_ins_rate: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see\\nSchirmer et al. BMC Bioinformatics 2016). [default: 2.8e-6]"
    flags: ""
    single_cell: ""
    bulk: ""
  }
  output {
    File out_stdout = stdout()
  }
}