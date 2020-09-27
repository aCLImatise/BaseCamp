version 1.0

task VtoolsReportTranscript {
  input {
    Boolean? build
    Boolean? strand_only
    Boolean? first_transcript
    Boolean? zero_based
    String? verbosity
    String regions
  }
  command <<<
    vtools_report transcript \
      ~{regions} \
      ~{if (build) then "--build" else ""} \
      ~{if (strand_only) then "--strand_only" else ""} \
      ~{if (first_transcript) then "--first_transcript" else ""} \
      ~{if (zero_based) then "--zero_based" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    build: "[BUILD]       Output sequence at specified build of reference\\ngenome. The primary reference genome of the project\\nwill be used if by default."
    strand_only: "Only output strand of genes that covers the region."
    first_transcript: "If set, only display the first transcript of RNA or\\nProtein sequence"
    zero_based: "If set, user input is zero based and will be\\ntranslated to 1-based coordinates before query. The\\noutput is always 1-based"
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    regions: "'One or more chromosome regions in the format of\\nchr:start-end (e.g. chr21:33,031,597-33,041,570),\\nField:Value from a region-based annotation database\\n(e.g. refGene.name2:TRIM2 or\\nrefGene_exon.name:NM_000947), or set options of\\nseveral regions (&, |, -, and ^ for intersection,\\nunion, difference, and symmetric difference)."
  }
  output {
    File out_stdout = stdout()
  }
}