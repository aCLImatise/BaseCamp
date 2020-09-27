version 1.0

task TEtranscripts {
  input {
    File? te
    Int? group_eg_treatmentmutant
    Int? group_eg_controlwildtype
    File? gtf
    Boolean? format
    Boolean? stranded
    Boolean? mode
    Boolean? project
    Boolean? fdr_cutoff_significance
    Boolean? foldchange_ratio_absolute
    Boolean? min_read
    Boolean? de_seq
    Boolean? number_iteration_run
    Boolean? max_l
    Boolean? min_l
    Boolean? average_fragment_length
    Boolean? verbose
    String analysis_dot
    String de_seq_default
  }
  command <<<
    TEtranscripts \
      ~{analysis_dot} \
      ~{de_seq_default} \
      ~{if defined(te) then ("--TE " +  '"' + te + '"') else ""} \
      ~{if defined(group_eg_treatmentmutant) then ("-t " +  '"' + group_eg_treatmentmutant + '"') else ""} \
      ~{if defined(group_eg_controlwildtype) then ("-c " +  '"' + group_eg_controlwildtype + '"') else ""} \
      ~{if defined(gtf) then ("--GTF " +  '"' + gtf + '"') else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (project) then "--project" else ""} \
      ~{if (fdr_cutoff_significance) then "-p" else ""} \
      ~{if (foldchange_ratio_absolute) then "-f" else ""} \
      ~{if (min_read) then "--minread" else ""} \
      ~{if (de_seq) then "--DESeq" else ""} \
      ~{if (number_iteration_run) then "-i" else ""} \
      ~{if (max_l) then "--maxL" else ""} \
      ~{if (min_l) then "--minL" else ""} \
      ~{if (average_fragment_length) then "-L" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    te: "[--format [input file format]]"
    group_eg_treatmentmutant: "sample [treatment sample ...], --treatment treatment sample [treatment sample ...]\\nSample files in group 1 (e.g. treatment/mutant)"
    group_eg_controlwildtype: "sample [control sample ...], --control control sample [control sample ...]\\nSample files in group 2 (e.g. control/wildtype)"
    gtf: "GTF file for gene annotations"
    format: "[input file format]\\nInput file format: BAM or SAM. DEFAULT: BAM"
    stranded: "[option]   Is this a stranded library? (no, forward, or reverse).\\nFor \\\"first-strand\\\" cDNA libraries (e.g. TruSeq\\nstranded), choose reverse. For \\\"second-strand\\\" cDNA\\nlibraries (e.g. QIAseq stranded), choose forward.\\nDEFAULT: no."
    mode: "[TE counting mode]\\nHow to count TE: uniq (unique mappers only), or multi\\n(distribute among all alignments). DEFAULT: multi"
    project: "[name]      Name of this project. DEFAULT: TEtranscripts_out"
    fdr_cutoff_significance: "[pvalue], --padj [pvalue]\\nFDR cutoff for significance. DEFAULT: 0.05"
    foldchange_ratio_absolute: "[foldchange], --foldchange [foldchange]\\nFold-change ratio (absolute) cutoff for differential\\nexpression. DEFAULT: 1"
    min_read: "[min_read]  read count cutoff. genes/TEs with reads less than the\\ncutoff will not be considered. DEFAULT: 1"
    de_seq: "Use DESeq (instead of DESeq2) for differential"
    number_iteration_run: "[iteration], --iteration [iteration]\\nnumber of iteration to run the optimization. DEFAULT:\\n100"
    max_l: "[maxL]         maximum fragment length. DEFAULT:500"
    min_l: "[minL]         minimum fragment length. DEFAULT:0"
    average_fragment_length: "[fragLength], --fragmentLength [fragLength]\\naverage fragment length for single end reads. For\\npaired-end, estimated from the input alignment file.\\nDEFAULT: for paired-end, estimate from the input\\nalignment file; for single-end, ignored by default."
    verbose: "[verbose]   Set verbose level. 0: only show critical message, 1:\\nshow additional warning message, 2: show process\\ninformation, 3: show debug messages. DEFAULT:2"
    analysis_dot: "-n [normalization], --norm [normalization]"
    de_seq_default: "--sortByPos           Alignment files are sorted by chromosome position."
  }
  output {
    File out_stdout = stdout()
  }
}