version 1.0

task ProTRAC242pl {
  input {
    File? genome
    File? name_file_contains
    File? format
    Boolean? repeatmasker
    Boolean? gene_set
    Boolean? sw_size
    Boolean? sw_incr
    Boolean? no_hc
    Boolean? norc
    Boolean? nor_pm
    Boolean? dens
    Boolean? p_dens
    Boolean? est
    Boolean? pi_size
    Boolean? pim_in
    Boolean? pi_max
    Boolean? one_tor_one_zero_a
    Boolean? on_et_and_one_zero_a
    Boolean? distr
    Boolean? cl_size
    Boolean? cl_hits
    Boolean? cl_hits_n
    Boolean? cl_strand
    Boolean? cl_split
    Boolean? no_html
    Boolean? notable
    File? nofa_spi
    File? nofa_scl
    File? no_gtf
    File? pti
    String? option
    String ftp
    Int _integer
    String clusters_dot
    String sites_dot
  }
  command <<<
    proTRAC_2_4_2_pl \
      ~{ftp} \
      ~{_integer} \
      ~{clusters_dot} \
      ~{sites_dot} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(name_file_contains) then ("-map " +  '"' + name_file_contains + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (repeatmasker) then "-repeatmasker" else ""} \
      ~{if (gene_set) then "-geneset" else ""} \
      ~{if (sw_size) then "-swsize" else ""} \
      ~{if (sw_incr) then "-swincr" else ""} \
      ~{if (no_hc) then "-nohc" else ""} \
      ~{if (norc) then "-norc" else ""} \
      ~{if (nor_pm) then "-norpm" else ""} \
      ~{if (dens) then "-dens" else ""} \
      ~{if (p_dens) then "-pdens" else ""} \
      ~{if (est) then "-est" else ""} \
      ~{if (pi_size) then "-pisize" else ""} \
      ~{if (pim_in) then "-pimin" else ""} \
      ~{if (pi_max) then "-pimax" else ""} \
      ~{if (one_tor_one_zero_a) then "-1Tor10A" else ""} \
      ~{if (on_et_and_one_zero_a) then "-1Tand10A" else ""} \
      ~{if (distr) then "-distr" else ""} \
      ~{if (cl_size) then "-clsize" else ""} \
      ~{if (cl_hits) then "-clhits" else ""} \
      ~{if (cl_hits_n) then "-clhitsn" else ""} \
      ~{if (cl_strand) then "-clstrand" else ""} \
      ~{if (cl_split) then "-clsplit" else ""} \
      ~{if (no_html) then "-nohtml" else ""} \
      ~{if (notable) then "-notable" else ""} \
      ~{if (nofa_spi) then "-nofaspi" else ""} \
      ~{if (nofa_scl) then "-nofascl" else ""} \
      ~{if (no_gtf) then "-nogtf" else ""} \
      ~{if (pti) then "-pti" else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "[file]    Name of the file that contains the genomic sequence\\nand that was used for mapping the sequence reads."
    name_file_contains: "[file]       Name of the file that contains mapped reads in SAM\\nor ELAND3 format. We recommend to use SeqMap with\\noption /output_all_matches or sRNAmapper with default\\nsettings to create an appropriate file. When using a\\nmore popular mapper you should make sure to allow for\\nmulti-mapping."
    format: "[s]       Specify the input format. Allowed values are SAM and\\nELAND3. This is only required if the input file\\ncontains less than 1000 hits."
    repeatmasker: "[file]    Name of the file that contains the RepeatMasker\\nannotation. Make sure that the names for the\\nchromosomes/scaffolds are identical in your Repeat-\\nMasker and genome file."
    gene_set: "[file]         Name of the file that contains gene annotation (GTF-\\nfile from Ensembl database). Make sure that the names\\nfor the chromosomes/scaffolds are identical in your\\nGTF- and genome file."
    sw_size: "[int]           Size of the sliding window (default=5000)"
    sw_incr: "[int]           Increment of the sliding window (default=1000)"
    no_hc: "Do not consider total number of genomic hits for the\\nsequence in question for calculation of hit counts."
    norc: "Do not consider number of reads for the sequence in\\nquestion for calculation of hit counts."
    nor_pm: "Do not normalize the hit count with the total number\\nof mapped sequence reads (reads per million).\\nNormalization will make the values comparable accross\\ndifferent piRNA libraries and/or organisms."
    dens: "[fpt]             Define an absolute minimum number of (normalized)\\nread counts per kb."
    p_dens: "[0..1]           Define a p-value for minimum number of (normalized)\\nread counts per kb. A p-value of 0.01 means that the\\n(normalized) read count value in a sliding window must\\nbelong to the top 1% of all sliding windows."
    est: "[int]              Use that option together with -pdens. Estimate the\\nrequired minimum number of (normalized) read counts\\nin a sliding windows based on n random 1kb sliding\\nwindows (faster). Without that option proTRAC will\\nscan the map file and calculate the required minimum\\nnumber of (normalized) read counts in a sliding\\nwindow based on the observed distribution."
    pi_size: "[0..1]          Fraction of (normalized) read counts that have\\nthe typical piRNA size (default=0.75)."
    pim_in: "[int]            Define the minimum length of a piRNA (default=24)."
    pi_max: "[int]            Define the maximum length of a piRNA (default=32)."
    one_tor_one_zero_a: "[0..1]         Fraction of (normalized) read counts that have 1T\\n(1U) or 10A (default=0.75)."
    on_et_and_one_zero_a: "[0..1]        If the fraction of (normalized) read counts with 1T\\n(1U) OR 10A is below the value defined by -1Tor10A,\\naccept the sliding window if BOTH the 1T (1U) and the\\n10A fraction reach this value (default=0.5)."
    distr: "[ftp-ftp]        To avoid false positive piRNA cluster annotation of\\nloci with one or few mapped sequences represented by\\nexceptionally many reads. You can e.g. type\\n'-distr 10-75' which means that the TOP 10% of\\nmapped sequences account for max. 75% of the piRNA\\nclusters (normalized) read counts. Otherwise the\\nlocus is rejected."
    cl_size: "[int]           Set the minimum size for a piRNA cluster (default=\\n1000)."
    cl_hits: "[int]           Minimum number of sequence hit loci per piRNA cluster\\n(default=0)."
    cl_hits_n: "[ftp]          Minimum number of normalized sequence read counts per\\npiRNA cluster (default=0)."
    cl_strand: "[0..1]        Fraction of (normalized) read counts that map to the\\nmain strand (default=0.75)."
    cl_split: "[0..1]         Minimum fraction of (normalized) read counts on the\\nsmaller arm of a bi-directional piRNA cluster.\\nOtherwise the cluster will be annotated as\\nmono-directional (default=0.1)."
    no_html: "Do not output .html files for each piRNA cluster."
    notable: "Do not output a summary table."
    nofa_spi: "Do not output a FASTA file comprising mapped piRNAs\\nfor each cluster."
    nofa_scl: "Do not output a FASTA file comprising all piRNA\\ncluster sequences."
    no_gtf: "Do not output a GTF file for predicted piRNA"
    pti: "Output a file that contains information on mapped\\nsequence reads in a tab-delimited table that\\ncomprises sequence, reads, genomic hits e.g:\\nTGGGCACGCAAATTCGAGTATCG   12   4\\n"
    option: ""
    ftp: "= floating point number"
    _integer: "= integer"
    clusters_dot: "-nomotif                Do not search for transcription factor binding"
    sites_dot: "-flank [int]            Include n bp of flanking sequence in output files."
  }
  output {
    File out_stdout = stdout()
    File out_nofa_spi = "${in_nofa_spi}"
    File out_nofa_scl = "${in_nofa_scl}"
    File out_no_gtf = "${in_no_gtf}"
    File out_pti = "${in_pti}"
  }
}