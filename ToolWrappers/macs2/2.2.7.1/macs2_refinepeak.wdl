version 1.0

task Macs2Refinepeak {
  input {
    File? candidate_peak_file
    Array[File] i_file
    String? format
    Int? cut_off
    Int? window_size
    Int? buffer_size
    Int? verbose
    Directory? outdir
    File? ofile
    File? o_prefix
  }
  command <<<
    macs2 refinepeak \
      ~{if defined(candidate_peak_file) then ("-b " +  '"' + candidate_peak_file + '"') else ""} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(o_prefix) then ("--o-prefix " +  '"' + o_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    candidate_peak_file: "Candidate peak file in BED format. REQUIRED."
    i_file: "ChIP-seq alignment file. If multiple files are given\\nas '-t A B C', then they will all be read and\\ncombined. Note that pair-end data is not supposed to\\nwork with this command. REQUIRED."
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\" or \\\"ELAND\\\" or\\n\\\"ELANDMULTI\\\" or \\\"ELANDEXPORT\\\" or \\\"SAM\\\" or \\\"BAM\\\" or\\n\\\"BOWTIE\\\". The default AUTO option will let 'macs2\\nrefinepeak' decide which format the file is. Please\\ncheck the definition in README file if you choose\\nELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE. DEFAULT:\\n\\\"AUTO\\\""
    cut_off: "Cutoff DEFAULT: 5"
    window_size: "Scan window size on both side of the summit (default:\\n100bp)"
    buffer_size: "Buffer size for incrementally increasing internal\\narray size to store reads alignment information. In\\nmost cases, you don't have to change this parameter.\\nHowever, if there are large number of\\nchromosomes/contigs/scaffolds in your alignment, it's\\nrecommended to specify a smaller buffer size in order\\nto decrease memory usage (but it will take longer time\\nto read alignment files). Minimum memory requested for\\nreading an alignment file is about # of CHROMOSOME *\\nBUFFER_SIZE * 8 Bytes. DEFAULT: 100000"
    verbose: "Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. If you want to\\nknow where are the duplicate reads, use 3. DEFAULT:2"
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    ofile: "Output file name. Mutually exclusive with --o-prefix."
    o_prefix: "Output file prefix. Mutually exclusive with"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_ofile = "${in_ofile}"
    File out_o_prefix = "${in_o_prefix}"
  }
}