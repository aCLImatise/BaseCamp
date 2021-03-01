version 1.0

task Arem {
  input {
    File? treatment
    File? control
    File? name
    File? format
    Int? pet_dist
    Int? g_size
    Int? t_size
    Int? bw
    Float? p_value
    Int? m_fold
    Boolean? no_lambda
    Int? s_local
    Int? l_local
    Boolean? off_auto
    Boolean? no_model
    Int? shift_size
    Int? keep_dup
    Boolean? to_small
    Boolean? wig
    Boolean? bdg
    Boolean? single_profile
    Int? space
    Boolean? call_sub_peaks
    Int? verbose
    Boolean? diag
    Int? fe_min
    Int? fe_max
    Int? fe_step
    Boolean? no_em
    Int? em_converge_diff
    Int? em_min_score
    Int? em_max_score
    Boolean? em_show_graphs
    Int? quality_scale
    Boolean? random_multi
    Boolean? no_multi
    Boolean? no_greedy_caller
    Boolean? no_map_quals
    Float? prior_snp
    File? write_read_probs
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
      ~{if (no_lambda) then "--nolambda" else ""} \
      ~{if defined(s_local) then ("--slocal " +  '"' + s_local + '"') else ""} \
      ~{if defined(l_local) then ("--llocal " +  '"' + l_local + '"') else ""} \
      ~{if (off_auto) then "--off-auto" else ""} \
      ~{if (no_model) then "--nomodel" else ""} \
      ~{if defined(shift_size) then ("--shiftsize " +  '"' + shift_size + '"') else ""} \
      ~{if defined(keep_dup) then ("--keep-dup " +  '"' + keep_dup + '"') else ""} \
      ~{if (to_small) then "--to-small" else ""} \
      ~{if (wig) then "--wig" else ""} \
      ~{if (bdg) then "--bdg" else ""} \
      ~{if (single_profile) then "--single-profile" else ""} \
      ~{if defined(space) then ("--space " +  '"' + space + '"') else ""} \
      ~{if (call_sub_peaks) then "--call-subpeaks" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (diag) then "--diag" else ""} \
      ~{if defined(fe_min) then ("--fe-min " +  '"' + fe_min + '"') else ""} \
      ~{if defined(fe_max) then ("--fe-max " +  '"' + fe_max + '"') else ""} \
      ~{if defined(fe_step) then ("--fe-step " +  '"' + fe_step + '"') else ""} \
      ~{if (no_em) then "--no-EM" else ""} \
      ~{if defined(em_converge_diff) then ("--EM-converge-diff " +  '"' + em_converge_diff + '"') else ""} \
      ~{if defined(em_min_score) then ("--EM-min-score " +  '"' + em_min_score + '"') else ""} \
      ~{if defined(em_max_score) then ("--EM-max-score " +  '"' + em_max_score + '"') else ""} \
      ~{if (em_show_graphs) then "--EM-show-graphs" else ""} \
      ~{if defined(quality_scale) then ("--quality-scale " +  '"' + quality_scale + '"') else ""} \
      ~{if (random_multi) then "--random-multi" else ""} \
      ~{if (no_multi) then "--no-multi" else ""} \
      ~{if (no_greedy_caller) then "--no-greedy-caller" else ""} \
      ~{if (no_map_quals) then "--no-map-quals" else ""} \
      ~{if defined(prior_snp) then ("--prior-snp " +  '"' + prior_snp + '"') else ""} \
      ~{if (write_read_probs) then "--write-read-probs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    treatment: "ChIP-seq treatment files. REQUIRED. When ELANDMULTIPET\\nis selected, you must provide two files separated by\\ncomma, e.g.\\ns_1_1_eland_multi.txt,s_1_2_eland_multi.txt"
    control: "Control files. When ELANDMULTIPET is selected, you\\nmust provide two files separated by comma, e.g.\\ns_2_1_eland_multi.txt,s_2_2_eland_multi.txt"
    name: "Experiment name, which will be used to generate output\\nfile names. DEFAULT: \\\"NA\\\""
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\" or \\\"ELAND\\\" or\\n\\\"ELANDMULTI\\\" or \\\"ELANDMULTIPET\\\" or \\\"ELANDEXPORT\\\" or\\n\\\"SAM\\\" or \\\"BAM\\\" or \\\"BOWTIE\\\". The default AUTO option\\nwill let AREM decide which format the file is. Please\\ncheck the definition in 00README file if you choose EL\\nAND/ELANDMULTI/ELANDMULTIPET/ELANDEXPORT/SAM/BAM/BOWTI\\nE. DEFAULT: \\\"AUTO\\\""
    pet_dist: "Best distance between Pair-End Tags. Only available\\nwhen format is 'ELANDMULTIPET'. DEFAULT: 200"
    g_size: "Effective genome size. It can be 1.0e+9 or 1000000000,\\nor shortcuts:'hs' for human (2.7e9), 'mm' for mouse\\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm' for\\nfruitfly (1.2e8), Default:hs"
    t_size: "Tag size. This will overide the auto detected tag\\nsize. DEFAULT: 25"
    bw: "Band width. This value is only used while building the\\nshifting model. DEFAULT: 300"
    p_value: "Pvalue cutoff for peak detection. DEFAULT: 1e-5"
    m_fold: "Select the regions within MFOLD range of high-\\nconfidence enrichment ratio against background to\\nbuild model. The regions must be lower than upper\\nlimit, and higher than the lower limit. DEFAULT:10,30"
    no_lambda: "If True, AREM will use fixed background lambda as\\nlocal lambda for every peak region. Normally, AREM\\ncalculates a dynamic local lambda to reflect the local\\nbias due to potential chromatin structure."
    s_local: "The small nearby region in basepairs to calculate\\ndynamic lambda. This is used to capture the bias near\\nthe peak summit region. Invalid if there is no control\\ndata. DEFAULT: 1000"
    l_local: "The large nearby region in basepairs to calculate\\ndynamic lambda. This is used to capture the surround\\nbias. DEFAULT: 10000."
    off_auto: "Whether turn off the auto pair model process. If not\\nset, when AREM failed to build paired model, it will\\nuse the nomodel settings, the '--shiftsize' parameter\\nto shift and extend each tags. DEFAULT: False"
    no_model: "Whether or not to build the shifting model. If True,\\nAREM will not build model. by default it means\\nshifting size = 100, try to set shiftsize to change\\nit. DEFAULT: False"
    shift_size: "The arbitrary shift size in bp. When nomodel is true,\\nAREM will use this value as 1/2 of fragment size.\\nDEFAULT: 100"
    keep_dup: "It controls the AREM behavior towards duplicate tags\\nat the exact same location -- the same coordination\\nand the same strand. The default 'auto' option makes\\nMACS calculate the maximum tags at the exact same\\nlocation based on binomal distribution using 1e-5 as\\npvalue cutoff; and the 'all' option keeps every tags.\\nIf an integer is given, at most this number of tags\\nwill be kept at the same location. Default: auto"
    to_small: "When set, scale the larger dataset down to the smaller\\ndataset, by default, the smaller dataset will be\\nscaled towards the larger dataset. DEFAULT: False"
    wig: "Whether or not to save extended fragment pileup at\\nevery WIGEXTEND bps into a wiggle file. When --single-\\nprofile is on, only one file for the whole genome is\\nsaved. WARNING: this process is time/space consuming!!"
    bdg: "Whether or not to save extended fragment pileup at\\nevery bp into a bedGraph file. When it's on, -w,\\n--space and --call-subpeaks will be ignored. When\\n--single-profile is on, only one file for the whole\\ngenome is saved. WARNING: this process is time/space\\nconsuming!!"
    single_profile: "When set, a single wiggle file will be saved for\\ntreatment and input. Default: False"
    space: "The resoluation for saving wiggle files, by default,\\nMACS will save the raw tag count every 10 bps. Usable\\nonly with '--wig' option."
    call_sub_peaks: "If set, AREM will invoke Mali Salmon's PeakSplitter\\nsoft through system call. If PeakSplitter can't be\\nfound, an instruction will be shown for downloading\\nand installing the PeakSplitter package. -w option\\nneeds to be on and -B should be off to let it work.\\nDEFAULT: False"
    verbose: "Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. DEFAULT:2"
    diag: "Whether or not to produce a diagnosis report. It's up\\nto 9X time consuming. Please check 00README file for\\ndetail. DEFAULT: False"
    fe_min: "For diagnostics, min fold enrichment to consider.\\nDEFAULT: 0"
    fe_max: "For diagnostics, max fold enrichment to consider.\\nDEFAULT: maximum fold enrichment"
    fe_step: "For diagnostics, fold enrichment step.  DEFAULT: 20"
    no_em: "Do NOT iteratively align multi-reads by E-M. Multi-\\nread probabilities will be based on quality scores or\\nuniform (if --no-quals) DEFAULT : FALSE"
    em_converge_diff: "The minimum entropy change between iterations before\\nhalting E-M steps. DEFAULT : 1e-05"
    em_min_score: "Minimum enrichment score. Windows below this threshold\\nwill all look the same to the aligner. DEFAULT : 1.5"
    em_max_score: "Maximum enrichment score. Windows above this threshold\\nwill all look the same to the aligner, DEFAULT : No\\nMaximum"
    em_show_graphs: "generate diagnostic graphs for E-M. (requires\\nMATPLOTLIB). DEFAULT : FALSE"
    quality_scale: "Initial alignment probabilities are determined by read\\nquality and mismatches. Each possible alignment is\\nassigned a probability from the product over all bases\\nof either 1-p(ReadError_base) when there is no\\nmismatch, or p(ReadError_base) when the called base\\ndisagrees with the reference.  You may also select a\\nuniform initialization. Read quality scale is the must\\nbe one of ['auto', 'sanger+33', 'illumina+64'].\\nDEFAULT : auto"
    random_multi: "Convert all multi reads to unique reads by selecting\\none alignment at random for each read. DEFAULT : False"
    no_multi: "Throw away all reads that have more than one alignment"
    no_greedy_caller: "Use AREM default peak caller instead of the greedy\\ncaller. This normally results in wider, less enriched\\npeaks, especially with multi-reads. DEFAULT : False"
    no_map_quals: "Do not use mapping probabilities as priors in each\\nupdate step; just use relative enrichment. DEFAULT :\\nFalse"
    prior_snp: "Prior probability that a SNP occurs at any base in the\\ngenome. DEFAULT : 0.001"
    write_read_probs: "Write out all final reads, including their alignment\\nprobabilities as a BED file. DEFAULT : FALSE\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
    File out_write_read_probs = "${in_write_read_probs}"
  }
}