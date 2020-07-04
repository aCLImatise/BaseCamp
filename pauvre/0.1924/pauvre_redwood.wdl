version 1.0

task PauvreRedwood {
  input {
    Boolean? quiet
    String? fasta_file_doubled
    String? dpi
    Array[String] file_form
    String? gff
    Boolean? interlace
    Boolean? invert
    Boolean? log
    String? main_bam
    Boolean? no_timestamp
    String? output_base_name
    Array[String] query
    String? rnase_q_bam
    String? small_start
    String? sort
    Array[String] ticks
    Boolean? transparent
  }
  command <<<
    pauvre redwood \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(fasta_file_doubled) then ("-d " +  '"' + fasta_file_doubled + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(file_form) then ("--fileform " +  '"' + file_form + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{true="--interlace" false="" interlace} \
      ~{true="--invert" false="" invert} \
      ~{true="--log" false="" log} \
      ~{if defined(main_bam) then ("--main_bam " +  '"' + main_bam + '"') else ""} \
      ~{true="--no_timestamp" false="" no_timestamp} \
      ~{if defined(output_base_name) then ("--output-base-name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(rnase_q_bam) then ("--rnaseq_bam " +  '"' + rnase_q_bam + '"') else ""} \
      ~{if defined(small_start) then ("--small_start " +  '"' + small_start + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(ticks) then ("--ticks " +  '"' + ticks + '"') else ""} \
      ~{true="--transparent" false="" transparent}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    fasta_file_doubled: "[{main,rnaseq} ...], --doubled {main,rnaseq} [{main,rnaseq} ...] If your fasta file was doubled to map circularly, use this flag or you may encounter plotting errors. Accepts multiple arguments. 'main' is for the sam file passed with --sam, 'rnaseq' is for the sam file passed with --rnaseq"
    dpi: "Change the dpi from the default 600 if you need it higher"
    file_form: "Which output format would you like? Def.=png"
    gff: "The input filepath for the gff annotation to plot"
    interlace: "Interlace the reads so the pileup plot looks better. Doesn't work currently"
    invert: "invert the image so that it looks better on a dark background. DOESN'T DO ANYTHING."
    log: "Plot the RNAseq track with a log scale"
    main_bam: "The input filepath for the bam file to plot. Ideally was plotted with a fasta file that is two copies of the mitochondrial genome concatenated. This should be long reads (ONT, PB) and will be displayed in the interior of the redwood plot."
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file(s). The input file base name is the default."
    query: "Query your reads to change plotting options"
    rnase_q_bam: "The input filepath for the rnaseq bam file to plot"
    small_start: "This determines where the shortest of the filtered reads will appear on the redwood plot: on the outside or on the inside? The default option puts the longest reads on the outside and the shortest reads on the inside."
    sort: "What value to use to sort the order in which the reads are plotted?"
    ticks: "Specify control for the number of ticks."
    transparent: "Specify this option if you DON'T want a transparent background. Default is on."
  }
}