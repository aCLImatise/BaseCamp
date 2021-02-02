version 1.0

task Macs2Pileup {
  input {
    Array[File] i_file
    File? ofile
    Directory? outdir
    String? format
    Boolean? both_direction
    Int? ext_size
    Int? buffer_size
    Int? verbose
  }
  command <<<
    macs2 pileup \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (both_direction) then "--both-direction" else ""} \
      ~{if defined(ext_size) then ("--extsize " +  '"' + ext_size + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    i_file: "Alignment file. If multiple files are given as '-t A B\\nC', then they will all be read and combined. Note that\\npair-end data is not supposed to work with this\\ncommand. REQUIRED."
    ofile: "Output bedGraph file name. If not specified, will\\nwrite to standard output. REQUIRED."
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    format: "Format of tag file, \\\"AUTO\\\", \\\"BED\\\", \\\"ELAND\\\",\\n\\\"ELANDMULTI\\\", \\\"ELANDEXPORT\\\", \\\"SAM\\\", \\\"BAM\\\", \\\"BOWTIE\\\",\\n\\\"BAMPE\\\", or \\\"BEDPE\\\". The default AUTO option will let\\n'macs2 pileup' decide which format the file is.\\nDEFAULT: \\\"AUTO\\\", MACS2 will pick a format from \\\"AUTO\\\",\\n\\\"BED\\\", \\\"ELAND\\\", \\\"ELANDMULTI\\\", \\\"ELANDEXPORT\\\", \\\"SAM\\\",\\n\\\"BAM\\\" and \\\"BOWTIE\\\". If the format is BAMPE or BEDPE,\\nplease specify it explicitly. Please note that when\\nthe format is BAMPE or BEDPE, the -B and --extsize\\noptions would be ignored."
    both_direction: "By default, any read will be extended towards\\ndownstream direction by extension size. So it's\\n[0,size-1] (1-based index system) for plus strand read\\nand [-size+1,0] for minus strand read where position 0\\nis 5' end of the aligned read. Default behavior can\\nsimulate MACS2 way of piling up ChIP sample reads\\nwhere extension size is set as fragment size/d. If\\nthis option is set as on, aligned reads will be\\nextended in both upstream and downstream directions by\\nextension size. It means [-size,size] where 0 is the\\n5' end of a aligned read. It can partially simulate\\nMACS2 way of piling up control reads. However MACS2\\nlocal bias is calculated by maximizing the expected\\npileup over a ChIP fragment size/d estimated from\\n10kb, 1kb, d and whole genome background. This option\\nwill be ignored when the format is set as BAMPE or\\nBEDPE. DEFAULT: False"
    ext_size: "The extension size in bps. Each alignment read will\\nbecome a EXTSIZE of fragment, then be piled up. Check\\ndescription for -B for detail. It's twice the\\n`shiftsize` in old MACSv1 language. This option will\\nbe ignored when the format is set as BAMPE or BEDPE.\\nDEFAULT: 200"
    buffer_size: "Buffer size for incrementally increasing internal\\narray size to store reads alignment information. In\\nmost cases, you don't have to change this parameter.\\nHowever, if there are large number of\\nchromosomes/contigs/scaffolds in your alignment, it's\\nrecommended to specify a smaller buffer size in order\\nto decrease memory usage (but it will take longer time\\nto read alignment files). Minimum memory requested for\\nreading an alignment file is about # of CHROMOSOME *\\nBUFFER_SIZE * 8 Bytes. DEFAULT: 100000"
    verbose: "Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. If you want to\\nknow where are the duplicate reads, use 3. DEFAULT:2\\n"
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
    Directory out_outdir = "${in_outdir}"
  }
}