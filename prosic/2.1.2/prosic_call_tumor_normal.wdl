version 1.0

task ProsicCalltumornormal {
  input {
    Boolean? exclusive_end
    Boolean? flat_priors
    Boolean? omit_fragment_evidence
    Boolean? omit_indels
    Boolean? omit_sn_vs
    File? candidates
    Float? deletion_factor
    Float? eff_mut
    Float? het
    Int? in_del_window
    Float? insertion_factor
    Int? max_in_del_len
    File? obs
    File? bcf_file_contain
    Int? pile_up_window
    Int? ploidy
    Float? spurious_del_ext_rate
    Float? spurious_in_sext_rate
    Float? spurious_del_rate
    Float? spurious_ins_rate
    Float? spurious_i_size_rate
    Float? purity
    String? flags
    String tumor
    String normal
  }
  command <<<
    prosic call_tumor_normal \
      ~{flags} \
      ~{tumor} \
      ~{normal} \
      ~{if (exclusive_end) then "--exclusive-end" else ""} \
      ~{if (flat_priors) then "--flat-priors" else ""} \
      ~{if (omit_fragment_evidence) then "--omit-fragment-evidence" else ""} \
      ~{if (omit_indels) then "--omit-indels" else ""} \
      ~{if (omit_sn_vs) then "--omit-snvs" else ""} \
      ~{if defined(candidates) then ("--candidates " +  '"' + candidates + '"') else ""} \
      ~{if defined(deletion_factor) then ("--deletion-factor " +  '"' + deletion_factor + '"') else ""} \
      ~{if defined(eff_mut) then ("--effmut " +  '"' + eff_mut + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(in_del_window) then ("--indel-window " +  '"' + in_del_window + '"') else ""} \
      ~{if defined(insertion_factor) then ("--insertion-factor " +  '"' + insertion_factor + '"') else ""} \
      ~{if defined(max_in_del_len) then ("--max-indel-len " +  '"' + max_in_del_len + '"') else ""} \
      ~{if defined(obs) then ("--obs " +  '"' + obs + '"') else ""} \
      ~{if defined(bcf_file_contain) then ("--output " +  '"' + bcf_file_contain + '"') else ""} \
      ~{if defined(pile_up_window) then ("--pileup-window " +  '"' + pile_up_window + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(spurious_del_ext_rate) then ("--spurious-delext-rate " +  '"' + spurious_del_ext_rate + '"') else ""} \
      ~{if defined(spurious_in_sext_rate) then ("--spurious-insext-rate " +  '"' + spurious_in_sext_rate + '"') else ""} \
      ~{if defined(spurious_del_rate) then ("--spurious-del-rate " +  '"' + spurious_del_rate + '"') else ""} \
      ~{if defined(spurious_ins_rate) then ("--spurious-ins-rate " +  '"' + spurious_ins_rate + '"') else ""} \
      ~{if defined(spurious_i_size_rate) then ("--spurious-isize-rate " +  '"' + spurious_i_size_rate + '"') else ""} \
      ~{if defined(purity) then ("--purity " +  '"' + purity + '"') else ""}
  >>>
  parameter_meta {
    exclusive_end: "Assume that the END tag is exclusive (i.e. it points to the position after the\\nvariant). This is needed, e.g., for DELLY."
    flat_priors: "Ignore the prior model and use flat priors instead."
    omit_fragment_evidence: "Omit evidence consisting of read pairs with unexpected insert size (insert size\\nparameters will be ignored)."
    omit_indels: "Don't call indels."
    omit_sn_vs: "Don't call SNVs."
    candidates: "VCF/BCF file to process (if omitted, read from STDIN)."
    deletion_factor: "Factor of deletion mutation rate relative to SNV mutation rate (0.03 according\\nto Hodkinson et al. Nature Reviews Genetics 2011). [default: 0.03]"
    eff_mut: "Effective SNV mutation rate of tumor sample (should be estimated from somatic\\nSNVs). [default: 2000.0]"
    het: "Expected heterozygosity of normal sample. [default: 1.25E-4]"
    in_del_window: "Number of bases to consider left and right of indel breakpoint when\\ncalculating read support. This number should not be too large in order to\\navoid biases caused by other close variants. [default: 100]"
    insertion_factor: "Factor of insertion mutation rate relative to SNV mutation rate (0.01\\naccording to Hodkinson et al. Nature Reviews Genetics 2011). [default: 0.01]"
    max_in_del_len: "Omit longer indels when calling. [default: 1000]"
    obs: "Optional path where read observations shall be written to. The resulting file\\ncontains a line for each observation with tab-separated values."
    bcf_file_contain: "BCF file that shall contain the results (if omitted, write to STDOUT)."
    pile_up_window: "Window to investigate for evidence left and right of each variant. [default:\\n2500]"
    ploidy: "Average ploidy of tumor and normal sample. [default: 2]"
    spurious_del_ext_rate: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\\nSchirmer et al. BMC Bioinformatics 2016). [default: 0.0]"
    spurious_in_sext_rate: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\\nSchirmer et al. BMC Bioinformatics 2016) [0.0]. [default: 0.0]"
    spurious_del_rate: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see\\nSchirmer et al. BMC Bioinformatics 2016). [default: 5.1e-6]"
    spurious_ins_rate: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see\\nSchirmer et al. BMC Bioinformatics 2016). [default: 2.8e-6]"
    spurious_i_size_rate: "Rate of wrongly reported insert size abberations (should be set depending on\\nmapper, BWA: 0.01332338, LASER: 0.05922201). [default: 0.0]"
    purity: "Purity of tumor sample. [default: 1.0]"
    flags: ""
    tumor: ""
    normal: ""
  }
  output {
    File out_stdout = stdout()
  }
}