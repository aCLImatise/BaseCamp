version 1.0

task Macs2Predictd {
  input {
    Array[File] i_file
    String? format
    Int? g_size
    Int? t_size
    Int? bw
    Int? d_min
    Int? mfold__mfold
    Directory? outdir
    File? r_file
    Int? buffer_size
    Int? verbose
  }
  command <<<
    macs2 predictd \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(g_size) then ("--gsize " +  '"' + g_size + '"') else ""} \
      ~{if defined(t_size) then ("--tsize " +  '"' + t_size + '"') else ""} \
      ~{if defined(bw) then ("--bw " +  '"' + bw + '"') else ""} \
      ~{if defined(d_min) then ("--d-min " +  '"' + d_min + '"') else ""} \
      ~{if defined(mfold__mfold) then ("-m " +  '"' + mfold__mfold + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(r_file) then ("--rfile " +  '"' + r_file + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    i_file: "ChIP-seq alignment file. If multiple files are given\\nas '-t A B C', then they will all be read and\\ncombined. Note that pair-end data is not supposed to\\nwork with this command. REQUIRED."
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\" or \\\"ELAND\\\" or\\n\\\"ELANDMULTI\\\" or \\\"ELANDEXPORT\\\" or \\\"SAM\\\" or \\\"BAM\\\" or\\n\\\"BOWTIE\\\" or \\\"BAMPE\\\" or \\\"BEDPE\\\". The default AUTO\\noption will let MACS decide which format the file is.\\nPlease check the definition in README file if you\\nchoose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE.\\nDEFAULT: \\\"AUTO\\\""
    g_size: "Effective genome size. It can be 1.0e+9 or 1000000000,\\nor shortcuts:'hs' for human (2.7e9), 'mm' for mouse\\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm' for\\nfruitfly (1.2e8), Default:hs"
    t_size: "Tag size. This will override the auto detected tag\\nsize. DEFAULT: Not set"
    bw: "Band width for picking regions to compute fragment\\nsize. This value is only used while building the\\nshifting model. DEFAULT: 300"
    d_min: "Minimum fragment size in basepair. Any predicted\\nfragment size less than this will be excluded.\\nDEFAULT: 20"
    mfold__mfold: "MFOLD, --mfold MFOLD MFOLD\\nSelect the regions within MFOLD range of high-\\nconfidence enrichment ratio against background to\\nbuild model. Fold-enrichment in regions must be lower\\nthan upper limit, and higher than the lower limit. Use\\nas \\\"-m 10 30\\\". DEFAULT:5 50"
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    r_file: "PREFIX of filename of R script for drawing\\nX-correlation figure. DEFAULT:'predictd' and R file\\nwill be predicted_model.R"
    buffer_size: "Buffer size for incrementally increasing internal\\narray size to store reads alignment information. In\\nmost cases, you don't have to change this parameter.\\nHowever, if there are large number of\\nchromosomes/contigs/scaffolds in your alignment, it's\\nrecommended to specify a smaller buffer size in order\\nto decrease memory usage (but it will take longer time\\nto read alignment files). Minimum memory requested for\\nreading an alignment file is about # of CHROMOSOME *\\nBUFFER_SIZE * 8 Bytes. DEFAULT: 100000"
    verbose: "Set verbose level of runtime message. 0: only show\\ncritical message, 1: show additional warning message,\\n2: show process information, 3: show debug messages.\\nDEFAULT:2\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}