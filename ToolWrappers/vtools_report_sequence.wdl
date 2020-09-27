version 1.0

task VtoolsReportSequence {
  input {
    Boolean? build
    Boolean? numbered
    Int? char_per_line
    Boolean? transcribe
    Boolean? t_tou
    Boolean? translate
    Boolean? mark
    Boolean? mark_complement
    Boolean? mark_reverse
    Boolean? first_transcript
    Boolean? show_transcript
    Boolean? marked_region
    Boolean? hide_unmatched
    Boolean? zero_based
    String? verbosity
    String regions
  }
  command <<<
    vtools_report sequence \
      ~{regions} \
      ~{if (build) then "--build" else ""} \
      ~{if (numbered) then "--numbered" else ""} \
      ~{if defined(char_per_line) then ("--char_per_line " +  '"' + char_per_line + '"') else ""} \
      ~{if (transcribe) then "--transcribe" else ""} \
      ~{if (t_tou) then "--TtoU" else ""} \
      ~{if (translate) then "--translate" else ""} \
      ~{if (mark) then "--mark" else ""} \
      ~{if (mark_complement) then "--mark_complement" else ""} \
      ~{if (mark_reverse) then "--mark_reverse" else ""} \
      ~{if (first_transcript) then "--first_transcript" else ""} \
      ~{if (show_transcript) then "--show_transcript" else ""} \
      ~{if (marked_region) then "--marked_region" else ""} \
      ~{if (hide_unmatched) then "--hide_unmatched" else ""} \
      ~{if (zero_based) then "--zero_based" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    build: "[BUILD]       Output sequence at specified build of reference\\ngenome. The primary reference genome of the project\\nwill be used if by default."
    numbered: "[{left,right}]\\nIf specified, add position of the first or last\\nbasepair of each line to the left or right of the\\nline, and insert a space at every 10 basepair"
    char_per_line: "Number of characters (excluding space and leading\\nnumbers) per line. Default to 70 in regular and 60 in\\nnumbered format."
    transcribe: "[GENE [GENE ...]]\\nTranscribe DNA sequence into RNA sequence. variant\\ntools will look in the refGene database, find all\\ngenes that overlap with the region, locate exons and\\ncoding regions, transcribe the DNA sequence to RNA\\nsequence (basically discard introns, and complement if\\non reverse strand). The complete mRNA sequence will be\\nprinted regardless of the bounaries of specified\\nregions. If one or more names (refGene.name) are\\nspecified, only specified genes will be translated."
    t_tou: "Print U for T for RNA sequence. Otherwise use T."
    translate: "[GENE [GENE ...]]\\nTranslate DNA sequence into protein sequence. variant\\ntools will look in the refGene database, find all\\ngenes that overlap with the region, locate exons and\\ncoding regions, transcribe and translate the DNA\\nsequence to protein sequence. The complete protein\\nsequence will be printed regardless of the boundaries\\nof specified regions. If one or more names\\n(refGene.name) are specified, only specified genes\\nwill be translated."
    mark: "[MARK [MARK ...]]\\nMark a location (--mark chr pos), a variant (--mark\\nchr pos ref alt), a region (e.g.\\nrefGene_exon.name:NM_000947), or a particular sequence\\n(e.g. TCGGA) in red in the output. If a variant is\\nspecified, the changed nucleotide or amino acid will\\nbe printed. Currently only single nucleotide\\npolymorphisms are supported."
    mark_complement: "If set, also try to mark the complement of the\\nspecified sequence"
    mark_reverse: "If set, also try to mark the reverse sequence of the\\nspecified sequence. If both mark_complemnt and\\nmark_reverse are set, four different sequences will be\\nsearched."
    first_transcript: "If set, only display the first transcript of RNA or\\nProtein sequence"
    show_transcript: "Put transcript name before transcript"
    marked_region: "[MARKED_REGION [MARKED_REGION ...]], --marked-region [MARKED_REGION [MARKED_REGION ...]]\\nIf set to a number or pair of number, print only n bp\\nto the left and m (m=n if only one number is\\nspecified) of the marked region. The sequence itself\\nis no longer marked. This option is not yet supported\\nin all combinations of options."
    hide_unmatched: "If set, only display regions with marked variants or\\nsequences"
    zero_based: "If set, user input is zero based and will be\\ntranslated to 1-based coordinates before query. The\\noutput is always 1-based"
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    regions: "One or more chromosome regions in the format of\\nchr:start-end (e.g. chr21:33,031,597-33,041,570),\\nField:Value from a region-based annotation database\\n(e.g. refGene.name2:TRIM2 or\\nrefGene_exon.name:NM_000947), or set options of\\nseveral regions (&, |, -, and ^ for intersection,\\nunion, difference, and symmetric difference). Several\\nregions will be printed if the name matches more than\\none regions. Chromosome positions are 1-based and are\\ninclusive at both ends so the chromosome region has a\\nlength of end-start+1 bp. A reversed complementary\\nsequence will be outputted if starting position is\\nafter the ending position."
  }
  output {
    File out_stdout = stdout()
  }
}