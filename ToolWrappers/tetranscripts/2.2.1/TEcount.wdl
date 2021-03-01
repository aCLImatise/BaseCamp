version 1.0

task TEcount {
  input {
    File? bam
    File? gtf
    File? te
    File? format
    String? stranded
    String? mode
    String? project
    Boolean? sort_by_pos
    Int? iteration
    Int? max_l
    Int? min_l
    Int? fragment_length
    Boolean? verbose
  }
  command <<<
    TEcount \
      ~{if defined(bam) then ("--BAM " +  '"' + bam + '"') else ""} \
      ~{if defined(gtf) then ("--GTF " +  '"' + gtf + '"') else ""} \
      ~{if defined(te) then ("--TE " +  '"' + te + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if (sort_by_pos) then "--sortByPos" else ""} \
      ~{if defined(iteration) then ("--iteration " +  '"' + iteration + '"') else ""} \
      ~{if defined(max_l) then ("--maxL " +  '"' + max_l + '"') else ""} \
      ~{if defined(min_l) then ("--minL " +  '"' + min_l + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragmentLength " +  '"' + fragment_length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tetranscripts:2.2.1--pyh864c0ab_0"
  }
  parameter_meta {
    bam: "An RNAseq BAM file."
    gtf: "GTF file for gene annotations"
    te: "GTF file for transposable element annotations"
    format: "file format\\nInput file format: BAM or SAM. DEFAULT: BAM"
    stranded: "Is this a stranded library? (no, forward, or reverse).\\nFor \\\"first-strand\\\" cDNA libraries (e.g. TruSeq\\nstranded), choose reverse. For \\\"second-strand\\\" cDNA\\nlibraries (e.g. QIAseq stranded), choose forward.\\nDEFAULT: no."
    mode: "counting mode\\nHow to count TE: uniq (unique mappers only), or multi\\n(distribute among all alignments). DEFAULT: multi"
    project: "Name of this project. DEFAULT: TEcount_out"
    sort_by_pos: "Alignment file is sorted by chromosome position."
    iteration: "number of iteration to run the optimization. DEFAULT:\\n100"
    max_l: "maximum fragment length. DEFAULT:500"
    min_l: "minimum fragment length. DEFAULT:0"
    fragment_length: "average fragment length for single end reads. For\\npaired-end, estimated from the input alignment file.\\nDEFAULT: for paired-end, estimate from the input\\nalignment file; for single-end, ignored by default."
    verbose: "[verbose]   Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. DEFAULT:2"
  }
  output {
    File out_stdout = stdout()
  }
}