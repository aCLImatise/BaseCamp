version 1.0

task TEcount {
  input {
    String? bam
    String? gtf
    String? te
    String? format
    String? stranded
    String? mode
    String? project
    Boolean? sort_by_pos
    String? iteration
    Int? max_l
    Int? min_l
    String? fragment_length
    String? verbose
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
      ~{true="--sortByPos" false="" sort_by_pos} \
      ~{if defined(iteration) then ("--iteration " +  '"' + iteration + '"') else ""} \
      ~{if defined(max_l) then ("--maxL " +  '"' + max_l + '"') else ""} \
      ~{if defined(min_l) then ("--minL " +  '"' + min_l + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragmentLength " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    bam: "An RNAseq BAM file."
    gtf: "GTF file for gene annotations"
    te: "GTF file for transposable element annotations"
    format: "file format Input file format: BAM or SAM. DEFAULT: BAM"
    stranded: "Is this a stranded library? (no, forward, or reverse). For \"first-strand\" cDNA libraries (e.g. TruSeq stranded), choose reverse. For \"second-strand\" cDNA libraries (e.g. QIAseq stranded), choose forward. DEFAULT: no."
    mode: "counting mode How to count TE: uniq (unique mappers only), or multi (distribute among all alignments). DEFAULT: multi"
    project: "Name of this project. DEFAULT: TEcount_out"
    sort_by_pos: "Alignment file is sorted by chromosome position."
    iteration: "number of iteration to run the optimization. DEFAULT: 100"
    max_l: "maximum fragment length. DEFAULT:500"
    min_l: "minimum fragment length. DEFAULT:0"
    fragment_length: "average fragment length for single end reads. For paired-end, estimated from the input alignment file. DEFAULT: for paired-end, estimate from the input alignment file; for single-end, ignored by default."
    verbose: "Set verbose level. 0: only show critical message, 1: show additional warning message, 2: show process information, 3: show debug messages. DEFAULT:2"
  }
}