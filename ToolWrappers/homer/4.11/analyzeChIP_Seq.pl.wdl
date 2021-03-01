version 1.0

task AnalyzeChIPSeqpl {
  input {
    Directory? or
    File? i_raw
    String? style
    Boolean? m_size
    Boolean? focus
    Boolean? number_run_finding
    Boolean? enhancer
    Boolean? force
    Boolean? mask
    Boolean? skip_freq
    Boolean? cpg
    Boolean? tag_go
    Directory? normally_a_experimentsam
    Directory? inputdirectory_go_expdirectorygoanalysis
    Directory exp_tag_directory
    String genome
    String? global
    String? specific
  }
  command <<<
    analyzeChIP_Seq_pl \
      ~{exp_tag_directory} \
      ~{genome} \
      ~{global} \
      ~{specific} \
      ~{if defined(or) then ("-i " +  '"' + or + '"') else ""} \
      ~{if defined(i_raw) then ("-iraw " +  '"' + i_raw + '"') else ""} \
      ~{if defined(style) then ("-style " +  '"' + style + '"') else ""} \
      ~{if (m_size) then "-msize" else ""} \
      ~{if (focus) then "-focus" else ""} \
      ~{if (number_run_finding) then "-p" else ""} \
      ~{if (enhancer) then "-enhancer" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if (skip_freq) then "-skipFreq" else ""} \
      ~{if (cpg) then "-cpg" else ""} \
      ~{if (tag_go) then "-tagGO" else ""} \
      ~{if defined(normally_a_experimentsam) then ("-A " +  '"' + normally_a_experimentsam + '"') else ""} \
      ~{if defined(inputdirectory_go_expdirectorygoanalysis) then ("-D " +  '"' + inputdirectory_go_expdirectorygoanalysis + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    or: "(or)"
    i_raw: "[input alignment file2] ...(creates temporary input directory)"
    style: "(findPeaks style for peak finding, default: factor)"
    m_size: "(size of reagion to perform motif finding on, default: factor[200], histone[1000])"
    focus: "(2ndary motif analysis on \\\"focused\\\" TF peaks, using 50bp regions, or\\nanalysis of NFR regions of \\\"histone\\\" peaks, using 200bp regions)"
    number_run_finding: "<#> (number of CPUs to run motif finding with, default: 1)"
    enhancer: "(when performing analysis, limit motif finding to peaks >3kb from TSS)"
    force: "(forces all steps)"
    mask: "(Motif finding with repeat masked genome, or add \\\"r\\\" to end of genome name)"
    skip_freq: "(skips nucleotide frequency and GC quality control calculations)"
    cpg: "(For motif finding, use CpG% sequence bias correction, default: GC%)"
    tag_go: "(perform Genome Ontology Analysis on tags - need ~ 3Gbs of memory)"
    normally_a_experimentsam: "(normally -A experiment1.sam  ...)"
    inputdirectory_go_expdirectorygoanalysis: "INPUT_DIRECTORY -go EXP_DIRECTORY/GOanalysis"
    exp_tag_directory: ""
    genome: ""
    global: ""
    specific: ""
  }
  output {
    File out_stdout = stdout()
  }
}