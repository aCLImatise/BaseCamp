version 1.0

task MakeUCSCfile {
  input {
    Boolean? f_size
    Boolean? strand
    Boolean? frag_length
    Boolean? adjust
    Boolean? tbp
    Boolean? mint_bp
    Boolean? res
    Boolean? avg
    Boolean? last_tag
    Boolean? norm
    Boolean? norm_length
    String? no_adj
    Boolean? neg
    Boolean? cpg
    Boolean? color
    Directory? normalize_bedgraph_input
    Boolean? pseudo
    Boolean? log
    Boolean? subtract
    Boolean? input_tbp
    Int? bigwig
    File? send_output_gzipped
    Boolean? name
    Int? style
    Boolean? circo_s
    String? skip_chr
    Boolean? noheader
    Directory tag_directory
  }
  command <<<
    makeUCSCfile \
      ~{tag_directory} \
      ~{if (f_size) then "-fsize" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (frag_length) then "-fragLength" else ""} \
      ~{if (adjust) then "-adjust" else ""} \
      ~{if (tbp) then "-tbp" else ""} \
      ~{if (mint_bp) then "-mintbp" else ""} \
      ~{if (res) then "-res" else ""} \
      ~{if (avg) then "-avg" else ""} \
      ~{if (last_tag) then "-lastTag" else ""} \
      ~{if (norm) then "-norm" else ""} \
      ~{if (norm_length) then "-normLength" else ""} \
      ~{if defined(no_adj) then ("-noadj " +  '"' + no_adj + '"') else ""} \
      ~{if (neg) then "-neg" else ""} \
      ~{if (cpg) then "-CpG" else ""} \
      ~{if (color) then "-color" else ""} \
      ~{if defined(normalize_bedgraph_input) then ("-i " +  '"' + normalize_bedgraph_input + '"') else ""} \
      ~{if (pseudo) then "-pseudo" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (subtract) then "-subtract" else ""} \
      ~{if (input_tbp) then "-inputtbp" else ""} \
      ~{if defined(bigwig) then ("-bigWig " +  '"' + bigwig + '"') else ""} \
      ~{if defined(send_output_gzipped) then ("-o " +  '"' + send_output_gzipped + '"') else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if defined(style) then ("-style " +  '"' + style + '"') else ""} \
      ~{if (circo_s) then "-circos" else ""} \
      ~{if defined(skip_chr) then ("-skipChr " +  '"' + skip_chr + '"') else ""} \
      ~{if (noheader) then "-noheader" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f_size: "<#> (Size of file, when gzipped, default: 1e10, i.e. no reduction)"
    strand: "<both|separate|+|-> (control if reads are separated by strand, default: both)"
    frag_length: "<# | auto | given> (Approximate fragment length, default: auto)"
    adjust: "<#> (Adjust edge of tag 3' by # bp, negative for 5', default: none[good for dnase])"
    tbp: "<#> (Maximum tags per bp to count, default: no limit)"
    mint_bp: "<#> (Minimum tags per bp to count, default: no limit)"
    res: "<#> (Resolution, in bp, of file, default: 1)"
    avg: "(report average coverage if resolution is larger than 1bp, default: max is reported)"
    last_tag: "(To keep ucsc happy, last mapped tag is NOT extended by default\\nUsing this option will allow extending of data past the last tag position)"
    norm: "<#> (Total number of tags to normalize experiment to, default: 1e7)"
    norm_length: "<#> (Expected length of fragment to normalize to [0=off], default: 100)"
    no_adj: "(Do not normalize tag counts)"
    neg: "(plot negative values, i.e. for - strand transcription)"
    cpg: "(Show unmethylated CpG ratios)"
    color: "<(0-255),(0-255),(0-255)> (no spaces, rgb color for UCSC track, default: random)"
    normalize_bedgraph_input: "(normalize bedGraph to input data)"
    pseudo: "<#> (Number of pseudo counts used to smooth out low coverage areas, default: 5)"
    log: "(report log2 ratio instead of linear ratio)"
    subtract: "(subtract input instead of taking the ratio between experiments, default: ratio)"
    input_tbp: "<#>, -inputFragLength <#>, -inputAdjust <#> can also be set"
    bigwig: "(creates a full resolution bigWig file and track line file)\\nThis requires bedGraphToBigWig to be available in your executable path\\nAlso, because how how bigWig files work, use \\\"-strand -\\\" and \\\"-strand +\\\"\\nin separate runs to make strand specific files: \\\"-strand separate\\\" will not work\\nConsider using makeBigWig.pl and makeMultiWigHub.pl if interested in bigWigs"
    send_output_gzipped: "(send output to this file - will be gzipped, default: prints to stdout)\\nauto: this will place an appropriately named file in the tag directory"
    name: "<...> (Name of UCSC track, default: auto generated)"
    style: "(See options below:)\\nchipseq (standard, default)\\nrnaseq (strand specific, if unstranded add '-strand both' to end of command)\\ntss (strand specific, single bp fragment length)\\ndnase (fragments centered on tag position instead of downstream)\\nmethylated (single bp resolution of cytosine methylation)\\nunmethylated (single bp resolution of unmethylated cytosines)\\ndamid (2kb fragments centered on 5' end of reads)"
    circo_s: "<chrN:XXX-YYY|genome> (output only a specific region for circos[no header])"
    skip_chr: "(Skip this chromosome when making bedGraph)"
    noheader: "(don't print track lines, useful when making bigWigs)"
    tag_directory: ""
  }
  output {
    File out_stdout = stdout()
    File out_send_output_gzipped = "${in_send_output_gzipped}"
  }
}