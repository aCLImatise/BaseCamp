version 1.0

task ProTRAC2.4.2.pl {
  input {
    String? genome
    String? name_file_contains_mapped
    String? format
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
    Boolean? nofa_spi
    Boolean? nofa_scl
    Boolean? no_gtf
    Boolean? no_motif
    Boolean? flank
    Boolean? pti
    String? option
  }
  command <<<
    proTRAC_2.4.2.pl \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(name_file_contains_mapped) then ("-map " +  '"' + name_file_contains_mapped + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{true="-repeatmasker" false="" repeatmasker} \
      ~{true="-geneset" false="" gene_set} \
      ~{true="-swsize" false="" sw_size} \
      ~{true="-swincr" false="" sw_incr} \
      ~{true="-nohc" false="" no_hc} \
      ~{true="-norc" false="" norc} \
      ~{true="-norpm" false="" nor_pm} \
      ~{true="-dens" false="" dens} \
      ~{true="-pdens" false="" p_dens} \
      ~{true="-est" false="" est} \
      ~{true="-pisize" false="" pi_size} \
      ~{true="-pimin" false="" pim_in} \
      ~{true="-pimax" false="" pi_max} \
      ~{true="-1Tor10A" false="" one_tor_one_zero_a} \
      ~{true="-1Tand10A" false="" on_et_and_one_zero_a} \
      ~{true="-distr" false="" distr} \
      ~{true="-clsize" false="" cl_size} \
      ~{true="-clhits" false="" cl_hits} \
      ~{true="-clhitsn" false="" cl_hits_n} \
      ~{true="-clstrand" false="" cl_strand} \
      ~{true="-clsplit" false="" cl_split} \
      ~{true="-nohtml" false="" no_html} \
      ~{true="-notable" false="" notable} \
      ~{true="-nofaspi" false="" nofa_spi} \
      ~{true="-nofascl" false="" nofa_scl} \
      ~{true="-nogtf" false="" no_gtf} \
      ~{true="-nomotif" false="" no_motif} \
      ~{true="-flank" false="" flank} \
      ~{true="-pti" false="" pti} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    genome: "[file]    Name of the file that contains the genomic sequence and that was used for mapping the sequence reads."
    name_file_contains_mapped: "[file]       Name of the file that contains mapped reads in SAM or ELAND3 format. We recommend to use SeqMap with option /output_all_matches or sRNAmapper with default settings to create an appropriate file. When using a more popular mapper you should make sure to allow for multi-mapping."
    format: "[s]       Specify the input format. Allowed values are SAM and ELAND3. This is only required if the input file contains less than 1000 hits."
    repeatmasker: "[file]    Name of the file that contains the RepeatMasker annotation. Make sure that the names for the chromosomes/scaffolds are identical in your Repeat- Masker and genome file."
    gene_set: "[file]         Name of the file that contains gene annotation (GTF- file from Ensembl database). Make sure that the names for the chromosomes/scaffolds are identical in your GTF- and genome file."
    sw_size: "[int]           Size of the sliding window (default=5000)"
    sw_incr: "[int]           Increment of the sliding window (default=1000)"
    no_hc: "Do not consider total number of genomic hits for the sequence in question for calculation of hit counts."
    norc: "Do not consider number of reads for the sequence in question for calculation of hit counts."
    nor_pm: "Do not normalize the hit count with the total number of mapped sequence reads (reads per million). Normalization will make the values comparable accross different piRNA libraries and/or organisms."
    dens: "[fpt]             Define an absolute minimum number of (normalized)  read counts per kb."
    p_dens: "[0..1]           Define a p-value for minimum number of (normalized) read counts per kb. A p-value of 0.01 means that the (normalized) read count value in a sliding window must belong to the top 1% of all sliding windows."
    est: "[int]              Use that option together with -pdens. Estimate the  required minimum number of (normalized) read counts in a sliding windows based on n random 1kb sliding windows (faster). Without that option proTRAC will scan the map file and calculate the required minimum number of (normalized) read counts in a sliding window based on the observed distribution."
    pi_size: "[0..1]          Fraction of (normalized) read counts that have the typical piRNA size (default=0.75)."
    pim_in: "[int]            Define the minimum length of a piRNA (default=24)."
    pi_max: "[int]            Define the maximum length of a piRNA (default=32)."
    one_tor_one_zero_a: "[0..1]         Fraction of (normalized) read counts that have 1T (1U) or 10A (default=0.75)."
    on_et_and_one_zero_a: "[0..1]        If the fraction of (normalized) read counts with 1T (1U) OR 10A is below the value defined by -1Tor10A, accept the sliding window if BOTH the 1T (1U) and the 10A fraction reach this value (default=0.5)."
    distr: "[ftp-ftp]        To avoid false positive piRNA cluster annotation of loci with one or few mapped sequences represented by exceptionally many reads. You can e.g. type '-distr 10-75' which means that the TOP 10% of mapped sequences account for max. 75% of the piRNA clusters (normalized) read counts. Otherwise the locus is rejected."
    cl_size: "[int]           Set the minimum size for a piRNA cluster (default= 1000)."
    cl_hits: "[int]           Minimum number of sequence hit loci per piRNA cluster (default=0)."
    cl_hits_n: "[ftp]          Minimum number of normalized sequence read counts per piRNA cluster (default=0)."
    cl_strand: "[0..1]        Fraction of (normalized) read counts that map to the main strand (default=0.75)."
    cl_split: "[0..1]         Minimum fraction of (normalized) read counts on the smaller arm of a bi-directional piRNA cluster. Otherwise the cluster will be annotated as mono-directional (default=0.1)."
    no_html: "Do not output .html files for each piRNA cluster."
    notable: "Do not output a summary table."
    nofa_spi: "Do not output a FASTA file comprising mapped piRNAs for each cluster."
    nofa_scl: "Do not output a FASTA file comprising all piRNA cluster sequences."
    no_gtf: "Do not output a GTF file for predicted piRNA clusters."
    no_motif: "Do not search for transcription factor binding sites."
    flank: "[int]            Include n bp of flanking sequence in output files."
    pti: "Output a file that contains information on mapped sequence reads in a tab-delimited table that comprises sequence, reads, genomic hits e.g: TGGGCACGCAAATTCGAGTATCG   12   4"
    option: ""
  }
}