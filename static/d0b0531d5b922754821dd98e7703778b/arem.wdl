version 1.0

task Arem {
  input {
    String? treatment
    String? control
    String? name
    String? format
    String? pet_dist
    String? g_size
    String? t_size
    String? bw
    String? p_value
    String? m_fold
    Boolean? no_lambda
    String? s_local
    String? l_local
    Boolean? off_auto
    Boolean? no_model
    String? shift_size
    String? keep_dup
    Boolean? to_small
    Boolean? wig
    Boolean? bdg
    Boolean? single_profile
    String? space
    Boolean? call_sub_peaks
    String? verbose
    Boolean? diag
    String? fe_min
    String? fe_max
    String? fe_step
    Boolean? no_em
    Int? em_converge_diff
    Int? em_min_score
    Int? em_max_score
    Boolean? em_show_graphs
    String? quality_scale
    Boolean? random_multi
    Boolean? no_multi
    Boolean? no_greedy_caller
    Boolean? no_map_quals
    String? prior_snp
    Boolean? write_read_probs
  }
  command <<<
    arem \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(pet_dist) then ("--petdist " +  '"' + pet_dist + '"') else ""} \
      ~{if defined(g_size) then ("--gsize " +  '"' + g_size + '"') else ""} \
      ~{if defined(t_size) then ("--tsize " +  '"' + t_size + '"') else ""} \
      ~{if defined(bw) then ("--bw " +  '"' + bw + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(m_fold) then ("--mfold " +  '"' + m_fold + '"') else ""} \
      ~{true="--nolambda" false="" no_lambda} \
      ~{if defined(s_local) then ("--slocal " +  '"' + s_local + '"') else ""} \
      ~{if defined(l_local) then ("--llocal " +  '"' + l_local + '"') else ""} \
      ~{true="--off-auto" false="" off_auto} \
      ~{true="--nomodel" false="" no_model} \
      ~{if defined(shift_size) then ("--shiftsize " +  '"' + shift_size + '"') else ""} \
      ~{if defined(keep_dup) then ("--keep-dup " +  '"' + keep_dup + '"') else ""} \
      ~{true="--to-small" false="" to_small} \
      ~{true="--wig" false="" wig} \
      ~{true="--bdg" false="" bdg} \
      ~{true="--single-profile" false="" single_profile} \
      ~{if defined(space) then ("--space " +  '"' + space + '"') else ""} \
      ~{true="--call-subpeaks" false="" call_sub_peaks} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--diag" false="" diag} \
      ~{if defined(fe_min) then ("--fe-min " +  '"' + fe_min + '"') else ""} \
      ~{if defined(fe_max) then ("--fe-max " +  '"' + fe_max + '"') else ""} \
      ~{if defined(fe_step) then ("--fe-step " +  '"' + fe_step + '"') else ""} \
      ~{true="--no-EM" false="" no_em} \
      ~{if defined(em_converge_diff) then ("--EM-converge-diff " +  '"' + em_converge_diff + '"') else ""} \
      ~{if defined(em_min_score) then ("--EM-min-score " +  '"' + em_min_score + '"') else ""} \
      ~{if defined(em_max_score) then ("--EM-max-score " +  '"' + em_max_score + '"') else ""} \
      ~{true="--EM-show-graphs" false="" em_show_graphs} \
      ~{if defined(quality_scale) then ("--quality-scale " +  '"' + quality_scale + '"') else ""} \
      ~{true="--random-multi" false="" random_multi} \
      ~{true="--no-multi" false="" no_multi} \
      ~{true="--no-greedy-caller" false="" no_greedy_caller} \
      ~{true="--no-map-quals" false="" no_map_quals} \
      ~{if defined(prior_snp) then ("--prior-snp " +  '"' + prior_snp + '"') else ""} \
      ~{true="--write-read-probs" false="" write_read_probs}
  >>>
  parameter_meta {
    treatment: "ChIP-seq treatment files. REQUIRED. When ELANDMULTIPET is selected, you must provide two files separated by comma, e.g. s_1_1_eland_multi.txt,s_1_2_eland_multi.txt"
    control: "Control files. When ELANDMULTIPET is selected, you must provide two files separated by comma, e.g. s_2_1_eland_multi.txt,s_2_2_eland_multi.txt"
    name: "Experiment name, which will be used to generate output file names. DEFAULT: \"NA\""
    format: "Format of tag file, \"AUTO\", \"BED\" or \"ELAND\" or \"ELANDMULTI\" or \"ELANDMULTIPET\" or \"ELANDEXPORT\" or \"SAM\" or \"BAM\" or \"BOWTIE\". The default AUTO option will let AREM decide which format the file is. Please check the definition in 00README file if you choose EL AND/ELANDMULTI/ELANDMULTIPET/ELANDEXPORT/SAM/BAM/BOWTI E. DEFAULT: \"AUTO\""
    pet_dist: "Best distance between Pair-End Tags. Only available when format is 'ELANDMULTIPET'. DEFAULT: 200"
    g_size: "Effective genome size. It can be 1.0e+9 or 1000000000, or shortcuts:'hs' for human (2.7e9), 'mm' for mouse (1.87e9), 'ce' for C. elegans (9e7) and 'dm' for fruitfly (1.2e8), Default:hs"
    t_size: "Tag size. This will overide the auto detected tag size. DEFAULT: 25"
    bw: "Band width. This value is only used while building the shifting model. DEFAULT: 300"
    p_value: "Pvalue cutoff for peak detection. DEFAULT: 1e-5"
    m_fold: "Select the regions within MFOLD range of high- confidence enrichment ratio against background to build model. The regions must be lower than upper limit, and higher than the lower limit. DEFAULT:10,30"
    no_lambda: "If True, AREM will use fixed background lambda as local lambda for every peak region. Normally, AREM calculates a dynamic local lambda to reflect the local bias due to potential chromatin structure."
    s_local: "The small nearby region in basepairs to calculate dynamic lambda. This is used to capture the bias near the peak summit region. Invalid if there is no control data. DEFAULT: 1000"
    l_local: "The large nearby region in basepairs to calculate dynamic lambda. This is used to capture the surround bias. DEFAULT: 10000."
    off_auto: "Whether turn off the auto pair model process. If not set, when AREM failed to build paired model, it will use the nomodel settings, the '--shiftsize' parameter to shift and extend each tags. DEFAULT: False"
    no_model: "Whether or not to build the shifting model. If True, AREM will not build model. by default it means shifting size = 100, try to set shiftsize to change it. DEFAULT: False"
    shift_size: "The arbitrary shift size in bp. When nomodel is true, AREM will use this value as 1/2 of fragment size. DEFAULT: 100"
    keep_dup: "It controls the AREM behavior towards duplicate tags at the exact same location -- the same coordination and the same strand. The default 'auto' option makes MACS calculate the maximum tags at the exact same location based on binomal distribution using 1e-5 as pvalue cutoff; and the 'all' option keeps every tags. If an integer is given, at most this number of tags will be kept at the same location. Default: auto"
    to_small: "When set, scale the larger dataset down to the smaller dataset, by default, the smaller dataset will be scaled towards the larger dataset. DEFAULT: False"
    wig: "Whether or not to save extended fragment pileup at every WIGEXTEND bps into a wiggle file. When --single- profile is on, only one file for the whole genome is saved. WARNING: this process is time/space consuming!!"
    bdg: "Whether or not to save extended fragment pileup at every bp into a bedGraph file. When it's on, -w, --space and --call-subpeaks will be ignored. When --single-profile is on, only one file for the whole genome is saved. WARNING: this process is time/space consuming!!"
    single_profile: "When set, a single wiggle file will be saved for treatment and input. Default: False"
    space: "The resoluation for saving wiggle files, by default, MACS will save the raw tag count every 10 bps. Usable only with '--wig' option."
    call_sub_peaks: "If set, AREM will invoke Mali Salmon's PeakSplitter soft through system call. If PeakSplitter can't be found, an instruction will be shown for downloading and installing the PeakSplitter package. -w option needs to be on and -B should be off to let it work. DEFAULT: False"
    verbose: "Set verbose level. 0: only show critical message, 1: show additional warning message, 2: show process information, 3: show debug messages. DEFAULT:2"
    diag: "Whether or not to produce a diagnosis report. It's up to 9X time consuming. Please check 00README file for detail. DEFAULT: False"
    fe_min: "For diagnostics, min fold enrichment to consider. DEFAULT: 0"
    fe_max: "For diagnostics, max fold enrichment to consider. DEFAULT: maximum fold enrichment"
    fe_step: "For diagnostics, fold enrichment step.  DEFAULT: 20"
    no_em: "Do NOT iteratively align multi-reads by E-M. Multi- read probabilities will be based on quality scores or uniform (if --no-quals) DEFAULT : FALSE"
    em_converge_diff: "The minimum entropy change between iterations before halting E-M steps. DEFAULT : 1e-05"
    em_min_score: "Minimum enrichment score. Windows below this threshold will all look the same to the aligner. DEFAULT : 1.5"
    em_max_score: "Maximum enrichment score. Windows above this threshold will all look the same to the aligner, DEFAULT : No Maximum"
    em_show_graphs: "generate diagnostic graphs for E-M. (requires MATPLOTLIB). DEFAULT : FALSE"
    quality_scale: "Initial alignment probabilities are determined by read quality and mismatches. Each possible alignment is assigned a probability from the product over all bases of either 1-p(ReadError_base) when there is no mismatch, or p(ReadError_base) when the called base disagrees with the reference.  You may also select a uniform initialization. Read quality scale is the must be one of ['auto', 'sanger+33', 'illumina+64']. DEFAULT : auto"
    random_multi: "Convert all multi reads to unique reads by selecting one alignment at random for each read. DEFAULT : False"
    no_multi: "Throw away all reads that have more than one alignment"
    no_greedy_caller: "Use AREM default peak caller instead of the greedy caller. This normally results in wider, less enriched peaks, especially with multi-reads. DEFAULT : False"
    no_map_quals: "Do not use mapping probabilities as priors in each update step; just use relative enrichment. DEFAULT : False"
    prior_snp: "Prior probability that a SNP occurs at any base in the genome. DEFAULT : 0.001"
    write_read_probs: "Write out all final reads, including their alignment probabilities as a BED file. DEFAULT : FALSE"
  }
}