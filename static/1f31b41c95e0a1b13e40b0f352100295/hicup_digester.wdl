version 1.0

task HicupDigester {
  input {
    Boolean? arima
    Boolean? re_one
    Boolean? re_two
    Boolean? config
    File? genome
    Directory? outdir
    Boolean? quiet
    Boolean? zip
  }
  command <<<
    hicup_digester \
      ~{if (arima) then "--arima" else ""} \
      ~{if (re_one) then "--re1" else ""} \
      ~{if (re_two) then "--re2" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (zip) then "--zip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arima: "Set the --re1 option to that used by the Arima protocol:\\n^GATC,DpnII:G^ANTC,Arima"
    re_one: "Restriction enzyme used to digest the genome (the enzyme\\nthat forms the ligation junction) e.g. A^GATCT,BglII.\\nSome Hi-C protocols may use several enzymes.\\nTo specify several enzymes, use the \\\":\\\" to separate them\\ne.g. A^GATCT,BglII:A^AGCTT,HindIII:^GATC,DpnII.\\nHiCUP accomodates N in restriction enzyme: e.g. :A^ANCTT"
    re_two: "To specify a restriction enzyme instead of sonication to shorten\\ndi-tags. This restriction site does NOT form a Hi-C ligation\\njunction. 2 e.g. AG^CT,AluI. Typically the sonication\\nprotocol is followed."
    config: "Specify the name of the optional configuration file"
    genome: "Name of the genome to be digested (not the path to the genome file\\nor files, but the genome name to include in the output file)"
    outdir: "Specify the directory to which the output files should be\\nwritten"
    quiet: "Suppress all progress reports"
    zip: "Print the results to a gzip file"
  }
  output {
    File out_stdout = stdout()
    File out_genome = "${in_genome}"
    Directory out_outdir = "${in_outdir}"
  }
}