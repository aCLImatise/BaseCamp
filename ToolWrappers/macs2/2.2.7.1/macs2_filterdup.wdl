version 1.0

task Macs2Filterdup {
  input {
    Array[File] i_file
    String? format
    Int? g_size
    Int? t_size
    Float? p_value
    Int? keep_dup
    Int? buffer_size
    Int? verbose
    Directory? outdir
    File? ofile
    Boolean? dry_run
  }
  command <<<
    macs2 filterdup \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(g_size) then ("--gsize " +  '"' + g_size + '"') else ""} \
      ~{if defined(t_size) then ("--tsize " +  '"' + t_size + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(keep_dup) then ("--keep-dup " +  '"' + keep_dup + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_file: "Alignment file. If multiple files are given as '-t A B\\nC', then they will all be read and combined. Note that\\npair-end data is not supposed to work with this\\ncommand. REQUIRED."
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\" or \\\"ELAND\\\" or\\n\\\"ELANDMULTI\\\" or \\\"ELANDEXPORT\\\" or \\\"SAM\\\" or \\\"BAM\\\" or\\n\\\"BOWTIE\\\" or \\\"BAMPE\\\" or \\\"BEDPE\\\". The default AUTO\\noption will let 'macs2 filterdup' decide which format\\nthe file is. Please check the definition in README\\nfile if you choose\\nELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE or\\nBAMPE/BEDPE. DEFAULT: \\\"AUTO\\\""
    g_size: "Effective genome size. It can be 1.0e+9 or 1000000000,\\nor shortcuts:'hs' for human (2.7e9), 'mm' for mouse\\n(1.87e9), 'ce' for C. elegans (9e7) and 'dm' for\\nfruitfly (1.2e8), DEFAULT:hs"
    t_size: "Tag size. This will override the auto detected tag\\nsize. DEFAULT: Not set"
    p_value: "Pvalue cutoff for binomial distribution test.\\nDEFAULT:1e-5"
    keep_dup: "It controls the 'macs2 filterdup' behavior towards\\nduplicate tags/pairs at the exact same location -- the\\nsame coordination and the same strand. The 'auto'\\noption makes 'macs2 filterdup' calculate the maximum\\ntags at the exact same location based on binomal\\ndistribution using given -p as pvalue cutoff; and the\\n'all' option keeps every tags (useful if you only want\\nto convert formats). If an integer is given, at most\\nthis number of tags will be kept at the same location.\\nNote, MACS2 callpeak function uses KEEPDUPLICATES=1 as\\ndefault. Note, if you've used samtools or picard to\\nflag reads as 'PCR/Optical duplicate' in bit 1024,\\nMACS2 will still read them although the reads may be\\ndecided by MACS2 as duplicate later. Default: auto"
    buffer_size: "Buffer size for incrementally increasing internal\\narray size to store reads alignment information. In\\nmost cases, you don't have to change this parameter.\\nHowever, if there are large number of\\nchromosomes/contigs/scaffolds in your alignment, it's\\nrecommended to specify a smaller buffer size in order\\nto decrease memory usage (but it will take longer time\\nto read alignment files). Minimum memory requested for\\nreading an alignment file is about # of CHROMOSOME *\\nBUFFER_SIZE * 8 Bytes. DEFAULT: 100000"
    verbose: "Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. If you want to\\nknow where are the duplicate reads, use 3. DEFAULT:2"
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    ofile: "Output BED file name. If not specified, will write to\\nstandard output. Note, if the input format is BAMPE or\\nBEDPE, the output will be in BEDPE format. DEFAULT:\\nstdout"
    dry_run: "When set, filterdup will only output numbers instead\\nof writing output files, including maximum allowable\\nduplicates, total number of reads before filtering,\\ntotal number of reads after filtering, and redundant\\nrate. Default: not set\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_ofile = "${in_ofile}"
  }
}