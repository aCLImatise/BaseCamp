version 1.0

task RunBreakseq2.py {
  input {
    String? n_threads
    Array[String] bams
    String? work
    Array[String] chromosomes
    String? reference
    String? sample
    Boolean? keep_temp
    String? bp_lib
    String? bwa
    String? sam_tools
    Int? min_span
    String? window
    Int? min_overlap
    String? bp_lib_gff
    String? junction_length
    String? format_version
  }
  command <<<
    run_breakseq2.py \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(work) then ("--work " +  '"' + work + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--keep_temp" false="" keep_temp} \
      ~{if defined(bp_lib) then ("--bplib " +  '"' + bp_lib + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(min_span) then ("--min_span " +  '"' + min_span + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(bp_lib_gff) then ("--bplib_gff " +  '"' + bp_lib_gff + '"') else ""} \
      ~{if defined(junction_length) then ("--junction_length " +  '"' + junction_length + '"') else ""} \
      ~{if defined(format_version) then ("--format_version " +  '"' + format_version + '"') else ""}
  >>>
  parameter_meta {
    n_threads: "Number of processes to use for parallelism (default: 1)"
    bams: "Alignment BAMs (default: [])"
    work: "Working directory (default: work)"
    chromosomes: "List of chromosomes to process (default: [])"
    reference: "Reference FASTA (default: None)"
    sample: "Sample name. Leave unspecified to infer sample name from BAMs. (default: None)"
    keep_temp: "Keep temporary files (default: False)"
    bp_lib: "Breakpoint library FASTA (default: None)"
    bwa: "Path to BWA executable (default: None)"
    sam_tools: "Path to SAMtools executable (default: None)"
    min_span: "Minimum span for junction (default: 10)"
    window: "Window size (default: 100)"
    min_overlap: "Min overlap (default: 10)"
    bp_lib_gff: "Breakpoint GFF input (default: None)"
    junction_length: "Junction length (default: 200)"
    format_version: "Version of breakpoint library format to use (default: 2)"
  }
}