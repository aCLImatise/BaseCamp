version 1.0

task PauvreRedwood {
  input {
    Boolean? quiet
    String? your_fasta_file
    Int? dpi
    File? gff
    Boolean? interlace
    Boolean? invert
    Boolean? log
    File? main_bam
    File? no_timestamp
    File? output_base_name
    Array[String] query
    File? rnase_q_bam
    String? small_start
    String? sort
    Array[String] ticks
    Boolean? transparent
    String higher
  }
  command <<<
    pauvre redwood \
      ~{higher} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(your_fasta_file) then ("-d " +  '"' + your_fasta_file + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if (interlace) then "--interlace" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(main_bam) then ("--main_bam " +  '"' + main_bam + '"') else ""} \
      ~{if (no_timestamp) then "--no_timestamp" else ""} \
      ~{if defined(output_base_name) then ("--output-base-name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(rnase_q_bam) then ("--rnaseq_bam " +  '"' + rnase_q_bam + '"') else ""} \
      ~{if defined(small_start) then ("--small_start " +  '"' + small_start + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(ticks) then ("--ticks " +  '"' + ticks + '"') else ""} \
      ~{if (transparent) then "--transparent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    your_fasta_file: "[{main,rnaseq} ...], --doubled {main,rnaseq} [{main,rnaseq} ...]\\nIf your fasta file was doubled to map circularly, use\\nthis flag or you may encounter plotting errors.\\nAccepts multiple arguments. 'main' is for the sam file\\npassed with --sam, 'rnaseq' is for the sam file passed\\nwith --rnaseq"
    dpi: "Change the dpi from the default 600 if you need it"
    gff: "The input filepath for the gff annotation to plot"
    interlace: "Interlace the reads so the pileup plot looks better.\\nDoesn't work currently"
    invert: "invert the image so that it looks better on a dark\\nbackground. DOESN'T DO ANYTHING."
    log: "Plot the RNAseq track with a log scale"
    main_bam: "The input filepath for the bam file to plot. Ideally\\nwas plotted with a fasta file that is two copies of\\nthe mitochondrial genome concatenated. This should be\\nlong reads (ONT, PB) and will be displayed in the\\ninterior of the redwood plot."
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file(s). The input\\nfile base name is the default."
    query: "Query your reads to change plotting options"
    rnase_q_bam: "The input filepath for the rnaseq bam file to plot"
    small_start: "This determines where the shortest of the filtered\\nreads will appear on the redwood plot: on the outside\\nor on the inside? The default option puts the longest\\nreads on the outside and the shortest reads on the\\ninside."
    sort: "What value to use to sort the order in which the reads\\nare plotted?"
    ticks: "Specify control for the number of ticks."
    transparent: "Specify this option if you DON'T want a transparent\\nbackground. Default is on.\\n"
    higher: "--fileform STRING [STRING ...]"
  }
  output {
    File out_stdout = stdout()
    File out_no_timestamp = "${in_no_timestamp}"
  }
}