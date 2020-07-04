version 1.0

task FastCirc.py {
  input {
    String? ref
    String? genome
    String? gtf
    String? aligner_tophatfusion_star
    Boolean? pe
    String? fast_q
    String? pa_plus
    String? thread
    String? output_directory
    String parse
    String fusion
  }
  command <<<
    fast_circ.py \
      ~{parse} \
      ~{fusion} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(aligner_tophatfusion_star) then ("-t " +  '"' + aligner_tophatfusion_star + '"') else ""} \
      ~{true="--pe" false="" pe} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(pa_plus) then ("--pAplus " +  '"' + pa_plus + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""}
  >>>
  parameter_meta {
    ref: "Gene annotation."
    genome: "Genome FASTA file."
    gtf: "Annotation GTF file."
    aligner_tophatfusion_star: "Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl)."
    pe: "Parse paired-end alignment file (only for TopHat-Fusion)."
    fast_q: "Input file."
    pa_plus: "TopHat mapping directory for p(A)+ RNA-seq."
    thread: "Running threads. [default: 10]"
    output_directory: "Output directory. [default: .]"
    parse: ""
    fusion: ""
  }
}