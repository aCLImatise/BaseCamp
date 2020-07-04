version 1.0

task GimmeMotifs {
  input {
    String? background
    String? genome_name_file
    Boolean? de_novo
    Boolean? known
    Boolean? no_report
    Boolean? raw_score
    Boolean? no_gc
    Int? n_threads
    String? pfm_file_motifsdefault
    String? tools
    String? analysis
    Boolean? keep_intermediate
    Boolean? single_strand
    String? fraction
    String? size
    Boolean? h
    String fasta_bed_narrowpeak
    String outdir
  }
  command <<<
    gimme motifs \
      ~{fasta_bed_narrowpeak} \
      ~{outdir} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(genome_name_file) then ("-g " +  '"' + genome_name_file + '"') else ""} \
      ~{true="--denovo" false="" de_novo} \
      ~{true="--known" false="" known} \
      ~{true="--noreport" false="" no_report} \
      ~{true="--rawscore" false="" raw_score} \
      ~{true="--nogc" false="" no_gc} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(pfm_file_motifsdefault) then ("-p " +  '"' + pfm_file_motifsdefault + '"') else ""} \
      ~{if defined(tools) then ("--tools " +  '"' + tools + '"') else ""} \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{true="--keepintermediate" false="" keep_intermediate} \
      ~{true="--singlestrand" false="" single_strand} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    background: "Background type (random,genomic,gc,promoter,custom) or a file with background sequences (FASTA, BED or regions)"
    genome_name_file: "Genome name or fasta file"
    de_novo: "Only use de novo motifs"
    known: "Only use known motifs"
    no_report: "Don't create a HTML report."
    raw_score: "Don't z-score normalize motif scores"
    no_gc: "Don't use GC% bins"
    n_threads: "Number of threads (default 12)"
    pfm_file_motifsdefault: "PFM file with motifs.(default: gimme.vertebrate.v5.0.pfm)"
    tools: "Tools to use, any combination of MDmodule,MEME,MEMEW,D REME,Weeder,GADEM,MotifSampler,Trawler,Improbizer,BioP rospector,Posmo,ChIPMunk,AMD,HMS,Homer,XXmotif,ProSamp ler,DiNAMO (default MEME,BioProspector,Homer)"
    analysis: "Analysis type: small, medium, large, xl (xl)"
    keep_intermediate: "Don't delete intermediate files"
    single_strand: "Only predict motifs for single + strand (default is both)"
    fraction: "Fraction of peaks to use for motif predicton (0.2)"
    size: "Region size to use for motif prediction (200). Set to 0 to use the size of the input regions."
    h: ""
    fasta_bed_narrowpeak: "FASTA, BED, narrowPeak or region file."
    outdir: "Output directory."
  }
}