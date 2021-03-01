version 1.0

task Macs2Callpeak {
  input {
    Array[File] treatment
    Boolean? control_file_multiple
    String? format
    Int? g_size
    Int? t_size
    Int? keep_dup
    Directory? outdir
    File? name
    Boolean? bdg
    Int? verbose
    Boolean? track_line
    Boolean? sp_mr
    Boolean? no_model
    Int? shift
    Int? ext_size
    Int? bw
    Int? d_min
    Int? mfold__mfold
    Boolean? fix_bimodal
    Float? q_value
    File? p_value
    String? scale_to
    Boolean? down_sample
    Int? seed
    Directory? tempdir
    Boolean? no_lambda
    Int? s_local
    Int? l_local
    Int? max_gap
    Int? min_length
    Boolean? broad
    Boolean? cut_off_analysis
    Boolean? call_summits
    Float? fe_cut_off
    Int? buffer_size
    Boolean? to_large
    String instead_dot
  }
  command <<<
    macs2 callpeak \
      ~{instead_dot} \
      ~{if defined(treatment) then ("--treatment " +  '"' + treatment + '"') else ""} \
      ~{if (control_file_multiple) then "-c" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(g_size) then ("--gsize " +  '"' + g_size + '"') else ""} \
      ~{if defined(t_size) then ("--tsize " +  '"' + t_size + '"') else ""} \
      ~{if defined(keep_dup) then ("--keep-dup " +  '"' + keep_dup + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (bdg) then "--bdg" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (track_line) then "--trackline" else ""} \
      ~{if (sp_mr) then "--SPMR" else ""} \
      ~{if (no_model) then "--nomodel" else ""} \
      ~{if defined(shift) then ("--shift " +  '"' + shift + '"') else ""} \
      ~{if defined(ext_size) then ("--extsize " +  '"' + ext_size + '"') else ""} \
      ~{if defined(bw) then ("--bw " +  '"' + bw + '"') else ""} \
      ~{if defined(d_min) then ("--d-min " +  '"' + d_min + '"') else ""} \
      ~{if defined(mfold__mfold) then ("-m " +  '"' + mfold__mfold + '"') else ""} \
      ~{if (fix_bimodal) then "--fix-bimodal" else ""} \
      ~{if defined(q_value) then ("--qvalue " +  '"' + q_value + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(scale_to) then ("--scale-to " +  '"' + scale_to + '"') else ""} \
      ~{if (down_sample) then "--down-sample" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (no_lambda) then "--nolambda" else ""} \
      ~{if defined(s_local) then ("--slocal " +  '"' + s_local + '"') else ""} \
      ~{if defined(l_local) then ("--llocal " +  '"' + l_local + '"') else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (broad) then "--broad" else ""} \
      ~{if (cut_off_analysis) then "--cutoff-analysis" else ""} \
      ~{if (call_summits) then "--call-summits" else ""} \
      ~{if defined(fe_cut_off) then ("--fe-cutoff " +  '"' + fe_cut_off + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if (to_large) then "--to-large" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    treatment: "ChIP-seq treatment file. If multiple files are given\\nas '-t A B C', then they will all be read and pooled\\ntogether. REQUIRED."
    control_file_multiple: "[CFILE [CFILE ...]], --control [CFILE [CFILE ...]]\\nControl file. If multiple files are given as '-c A B\\nC', they will be pooled to estimate ChIP-seq\\nbackground noise."
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\" or \\\"ELAND\\\" or\\n\\\"ELANDMULTI\\\" or \\\"ELANDEXPORT\\\" or \\\"SAM\\\" or \\\"BAM\\\" or\\n\\\"BOWTIE\\\" or \\\"BAMPE\\\" or \\\"BEDPE\\\". The default AUTO\\noption will let MACS decide which format (except for\\nBAMPE and BEDPE which should be implicitly set) the\\nfile is. Please check the definition in README. Please\\nnote that if the format is set as BAMPE or BEDPE,\\nMACS2 will call its special Paired-end mode to call\\npeaks by piling up the actual ChIPed fragments defined\\nby both aligned ends, instead of predicting the\\nfragment size first and extending reads. Also please\\nnote that the BEDPE only contains three columns, and\\nis NOT the same BEDPE format used by BEDTOOLS.\\nDEFAULT: \\\"AUTO\\\""
    g_size: "Effective genome size. It can be 1.0e+9 or 1000000000,\\nor shortcuts:'hs' for human (2.7e9), 'mm' for mouse\\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm' for\\nfruitfly (1.2e8), Default:hs"
    t_size: "Tag size/read length. This will override the auto\\ndetected tag size. DEFAULT: Not set"
    keep_dup: "It controls the behavior towards duplicate tags at the\\nexact same location -- the same coordination and the\\nsame strand. The 'auto' option makes MACS calculate\\nthe maximum tags at the exact same location based on\\nbinomal distribution using 1e-5 as pvalue cutoff; and\\nthe 'all' option keeps every tags. If an integer is\\ngiven, at most this number of tags will be kept at the\\nsame location. Note, if you've used samtools or picard\\nto flag reads as 'PCR/Optical duplicate' in bit 1024,\\nMACS2 will still read them although the reads may be\\ndecided by MACS2 as duplicate later. If you plan to\\nrely on samtools/picard/any other tool to filter\\nduplicates, please remove those duplicate reads and\\nsave a new alignment file then ask MACS2 to keep all\\nby '--keep-dup all'. The default is to keep one tag at\\nthe same location. Default: 1"
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    name: "Experiment name, which will be used to generate output\\nfile names. DEFAULT: \\\"NA\\\""
    bdg: "Whether or not to save extended fragment pileup, and\\nlocal lambda tracks (two files) at every bp into a\\nbedGraph file. DEFAULT: False"
    verbose: "Set verbose level of runtime message. 0: only show\\ncritical message, 1: show additional warning message,\\n2: show process information, 3: show debug messages.\\nDEFAULT:2"
    track_line: "Tells MACS to include trackline with bedGraph files.\\nTo include this trackline while displaying bedGraph at\\nUCSC genome browser, can show name and description of\\nthe file as well. However my suggestion is to convert\\nbedGraph to bigWig, then show the smaller and faster\\nbinary bigWig file at UCSC genome browser, as well as\\ndownstream analysis. Require -B to be set. Default:\\nNot include trackline."
    sp_mr: "If True, MACS will SAVE signal per million reads for\\nfragment pileup profiles. It won't interfere with\\ncomputing pvalue/qvalue during peak calling, since\\ninternally MACS2 keeps using the raw pileup and\\nscaling factors between larger and smaller dataset to\\ncalculate statistics measurements. If you plan to use\\nthe signal output in bedGraph to call peaks using\\nbdgcmp and bdgpeakcall, you shouldn't use this option\\nbecause you will end up with different results.\\nHowever, this option is recommended for displaying\\nnormalized pileup tracks across many datasets. Require\\n-B to be set. Default: False"
    no_model: "Whether or not to build the shifting model. If True,\\nMACS will not build model. by default it means\\nshifting size = 100, try to set extsize to change it.\\nIt's highly recommended that while you have many\\ndatasets to process and you plan to compare different\\nconditions, aka differential calling, use both\\n'nomodel' and 'extsize' to make signal files from\\ndifferent datasets comparable. DEFAULT: False"
    shift: "(NOT the legacy --shiftsize option!) The arbitrary\\nshift in bp. Use discretion while setting it other\\nthan default value. When NOMODEL is set, MACS will use\\nthis value to move cutting ends (5') towards 5'->3'\\ndirection then apply EXTSIZE to extend them to\\nfragments. When this value is negative, ends will be\\nmoved toward 3'->5' direction. Recommended to keep it\\nas default 0 for ChIP-Seq datasets, or -1 * half of\\nEXTSIZE together with EXTSIZE option for detecting\\nenriched cutting loci such as certain DNAseI-Seq\\ndatasets. Note, you can't set values other than 0 if\\nformat is BAMPE or BEDPE for paired-end data. DEFAULT:\\n0."
    ext_size: "The arbitrary extension size in bp. When nomodel is\\ntrue, MACS will use this value as fragment size to\\nextend each read towards 3' end, then pile them up.\\nIt's exactly twice the number of obsolete SHIFTSIZE.\\nIn previous language, each read is moved 5'->3'\\ndirection to middle of fragment by 1/2 d, then\\nextended to both direction with 1/2 d. This is\\nequivalent to say each read is extended towards 5'->3'\\ninto a d size fragment. DEFAULT: 200. EXTSIZE and\\nSHIFT can be combined when necessary. Check SHIFT\\noption."
    bw: "Band width for picking regions to compute fragment\\nsize. This value is only used while building the\\nshifting model. Tweaking this is not recommended.\\nDEFAULT: 300"
    d_min: "Minimum fragment size in basepair. Any predicted\\nfragment size less than this will be excluded.\\nDEFAULT: 20"
    mfold__mfold: "MFOLD, --mfold MFOLD MFOLD\\nSelect the regions within MFOLD range of high-\\nconfidence enrichment ratio against background to\\nbuild model. Fold-enrichment in regions must be lower\\nthan upper limit, and higher than the lower limit. Use\\nas \\\"-m 10 30\\\". This setting is only used while\\nbuilding the shifting model. Tweaking it is not\\nrecommended. DEFAULT:5 50"
    fix_bimodal: "Whether turn on the auto pair model process. If set,\\nwhen MACS failed to build paired model, it will use\\nthe nomodel settings, the --exsize parameter to extend\\neach tags towards 3' direction. Not to use this\\nautomate fixation is a default behavior now. DEFAULT:\\nFalse"
    q_value: "Minimum FDR (q-value) cutoff for peak detection.\\nDEFAULT: 0.05. -q, and -p are mutually exclusive."
    p_value: "Pvalue cutoff for peak detection. DEFAULT: not set.\\n-q, and -p are mutually exclusive. If pvalue cutoff is\\nset, qvalue will not be calculated and reported as -1\\nin the final .xls file."
    scale_to: "When set to 'small', scale the larger sample up to the\\nsmaller sample. When set to 'larger', scale the\\nsmaller sample up to the bigger sample. By default,\\nscale to 'small'. This option replaces the obsolete '\\n--to-large' option. The default behavior is\\nrecommended since it will lead to less significant\\np/q-values in general but more specific results. Keep\\nin mind that scaling down will influence control/input\\nsample more. DEFAULT: 'small', the choice is either\\n'small' or 'large'."
    down_sample: "When set, random sampling method will scale down the\\nbigger sample. By default, MACS uses linear scaling.\\nWarning: This option will make your result unstable\\nand irreproducible since each time, random reads would\\nbe selected. Consider to use 'randsample' script\\ninstead. <not implmented>If used together with --SPMR,\\n1 million unique reads will be randomly picked.</not\\nimplemented> Caution: due to the implementation, the\\nfinal number of selected reads may not be as you\\nexpected! DEFAULT: False"
    seed: "Set the random seed while down sampling data. Must be\\na non-negative integer in order to be effective.\\nDEFAULT: not set"
    tempdir: "Optional directory to store temp files. DEFAULT: /tmp"
    no_lambda: "If True, MACS will use fixed background lambda as\\nlocal lambda for every peak region. Normally, MACS\\ncalculates a dynamic local lambda to reflect the local\\nbias due to the potential chromatin accessibility."
    s_local: "The small nearby region in basepairs to calculate\\ndynamic lambda. This is used to capture the bias near\\nthe peak summit region. Invalid if there is no control\\ndata. If you set this to 0, MACS will skip slocal\\nlambda calculation. *Note* that MACS will always\\nperform a d-size local lambda calculation while the\\ncontrol data is available. The final local bias would\\nbe the maximum of the lambda value from d, slocal, and\\nllocal size windows. While control is not available, d\\nand slocal lambda won't be considered. DEFAULT: 1000"
    l_local: "The large nearby region in basepairs to calculate\\ndynamic lambda. This is used to capture the surround\\nbias. If you set this to 0, MACS will skip llocal\\nlambda calculation. *Note* that MACS will always\\nperform a d-size local lambda calculation while the\\ncontrol data is available. The final local bias would\\nbe the maximum of the lambda value from d, slocal, and\\nllocal size windows. While control is not available, d\\nand slocal lambda won't be considered. DEFAULT: 10000."
    max_gap: "Maximum gap between significant sites to cluster them\\ntogether. The DEFAULT value is the detected read\\nlength/tag size."
    min_length: "Minimum length of a peak. The DEFAULT value is the\\npredicted fragment size d. Note, if you set a value\\nsmaller than the fragment size, it may have NO effect\\non the result. For BROAD peak calling, try to set a\\nlarge value such as 500bps. You can also use '--\\ncutoff-analysis' option with default setting, and\\ncheck the column 'avelpeak' under different cutoff\\nvalues to decide a reasonable minlen value."
    broad: "If set, MACS will try to call broad peaks using the"
    cut_off_analysis: "While set, MACS2 will analyze number or total length\\nof peaks that can be called by different p-value\\ncutoff then output a summary table to help user decide\\na better cutoff. The table will be saved in\\nNAME_cutoff_analysis.txt file. Note, minlen and maxgap\\nmay affect the results. WARNING: May take ~30 folds\\nlonger time to finish. The result can be useful for\\nusers to decide a reasonable cutoff value. DEFAULT:\\nFalse"
    call_summits: "If set, MACS will use a more sophisticated signal\\nprocessing approach to find subpeak summits in each\\nenriched peak region. DEFAULT: False"
    fe_cut_off: "When set, the value will be used to filter out peaks\\nwith low fold-enrichment. Note, MACS2 use 1.0 as\\npseudocount while calculating fold-enrichment.\\nDEFAULT: 1.0"
    buffer_size: "Buffer size for incrementally increasing internal\\narray size to store reads alignment information. In\\nmost cases, you don't have to change this parameter.\\nHowever, if there are large number of\\nchromosomes/contigs/scaffolds in your alignment, it's\\nrecommended to specify a smaller buffer size in order\\nto decrease memory usage (but it will take longer time\\nto read alignment files). Minimum memory requested for\\nreading an alignment file is about # of CHROMOSOME *\\nBUFFER_SIZE * 8 Bytes. DEFAULT: 100000"
    to_large: "Obsolete option. Please use '--scale-to large'"
    instead_dot: "--ratio RATIO         Obsolete option. Originally designed to normalize"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_name = "${in_name}"
  }
}