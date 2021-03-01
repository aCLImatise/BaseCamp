version 1.0

task FastCircpy {
  input {
    String? ref
    File? genome
    File? gtf
    String? aligner_tophatfusion_star
    Boolean? pe
    File? fast_q
    Directory? pa_plus
    Int? thread
    Directory? output_directory
    String annotate
    String de_novo
    String parse
  }
  command <<<
    fast_circ_py \
      ~{annotate} \
      ~{de_novo} \
      ~{parse} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(aligner_tophatfusion_star) then ("-t " +  '"' + aligner_tophatfusion_star + '"') else ""} \
      ~{if (pe) then "--pe" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(pa_plus) then ("--pAplus " +  '"' + pa_plus + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    annotate: ""
    de_novo: ""
    parse: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}