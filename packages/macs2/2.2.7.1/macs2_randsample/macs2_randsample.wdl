version 1.0

task Macs2Randsample {
  input {
    Array[File] i_file
    Int? percentage
    Int? number
    Int? seed
    File? ofile
    Directory? outdir
    Int? t_size
    String? format
    Int? buffer_size
    Int? verbose
  }
  command <<<
    macs2 randsample \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(percentage) then ("--percentage " +  '"' + percentage + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(t_size) then ("--tsize " +  '"' + t_size + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    i_file: "Alignment file. If multiple files are given as '-t A B\\nC', then they will all be read and combined. Note that\\npair-end data is not supposed to work with this\\ncommand. REQUIRED."
    percentage: "Percentage of tags you want to keep. Input 80.0 for\\n80%. This option can't be used at the same time with\\n-n/--num. REQUIRED"
    number: "Number of tags you want to keep. Input 8000000 or 8e+6\\nfor 8 million. This option can't be used at the same\\ntime with -p/--percent. Note that the number of tags\\nin output is approximate as the number specified here.\\nREQUIRED"
    seed: "Set the random seed while down sampling data. Must be\\na non-negative integer in order to be effective.\\nDEFAULT: not set"
    ofile: "Output BED file name. If not specified, will write to\\nstandard output. Note, if the input format is BAMPE or\\nBEDPE, the output will be in BEDPE format. DEFAULT:\\nstdout"
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    t_size: "Tag size. This will override the auto detected tag\\nsize. DEFAULT: Not set"
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\" or \\\"ELAND\\\" or\\n\\\"ELANDMULTI\\\" or \\\"ELANDEXPORT\\\" or \\\"SAM\\\" or \\\"BAM\\\" or\\n\\\"BOWTIE\\\" or \\\"BAMPE\\\" or \\\"BEDPE\\\". The default AUTO\\noption will macs2 randsample decide which format the\\nfile is. Please check the definition in README file if\\nyou choose ELAND/ELANDMULTI/ELANDEXPORT/SAM/BAM/BOWTIE\\nor BAMPE/BEDPE. DEFAULT: \\\"AUTO\\\""
    buffer_size: "Buffer size for incrementally increasing internal\\narray size to store reads alignment information. In\\nmost cases, you don't have to change this parameter.\\nHowever, if there are large number of\\nchromosomes/contigs/scaffolds in your alignment, it's\\nrecommended to specify a smaller buffer size in order\\nto decrease memory usage (but it will take longer time\\nto read alignment files). Minimum memory requested for\\nreading an alignment file is about # of CHROMOSOME *\\nBUFFER_SIZE * 8 Bytes. DEFAULT: 100000"
    verbose: "Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. If you want to\\nknow where are the duplicate reads, use 3. DEFAULT:2\\n"
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
    Directory out_outdir = "${in_outdir}"
  }
}