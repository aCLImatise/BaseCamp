version 1.0

task AnalyzeChIPSeq.pl {
  input {
    String? or
    String? i_raw
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
    String? len
    String? inputdirectory_go_expdirectorygoanalysis
    String exp_tag_directory
    String genome
    String? global
    String? specific
  }
  command <<<
    analyzeChIP-Seq.pl \
      ~{exp_tag_directory} \
      ~{genome} \
      ~{global} \
      ~{specific} \
      ~{if defined(or) then ("-i " +  '"' + or + '"') else ""} \
      ~{if defined(i_raw) then ("-iraw " +  '"' + i_raw + '"') else ""} \
      ~{if defined(style) then ("-style " +  '"' + style + '"') else ""} \
      ~{true="-msize" false="" m_size} \
      ~{true="-focus" false="" focus} \
      ~{true="-p" false="" number_run_finding} \
      ~{true="-enhancer" false="" enhancer} \
      ~{true="-force" false="" force} \
      ~{true="-mask" false="" mask} \
      ~{true="-skipFreq" false="" skip_freq} \
      ~{true="-cpg" false="" cpg} \
      ~{true="-tagGO" false="" tag_go} \
      ~{if defined(len) then ("-len " +  '"' + len + '"') else ""} \
      ~{if defined(inputdirectory_go_expdirectorygoanalysis) then ("-D " +  '"' + inputdirectory_go_expdirectorygoanalysis + '"') else ""}
  >>>
  parameter_meta {
    or: "(or)"
    i_raw: "[input alignment file2] ...(creates temporary input directory)"
    style: "(findPeaks style for peak finding, default: factor)"
    m_size: "(size of reagion to perform motif finding on, default: factor[200], histone[1000])"
    focus: "(2ndary motif analysis on \"focused\" TF peaks, using 50bp regions, or analysis of NFR regions of \"histone\" peaks, using 200bp regions)"
    number_run_finding: "<#> (number of CPUs to run motif finding with, default: 1)"
    enhancer: "(when performing analysis, limit motif finding to peaks >3kb from TSS)"
    force: "(forces all steps)"
    mask: "(Motif finding with repeat masked genome, or add \"r\" to end of genome name)"
    skip_freq: "(skips nucleotide frequency and GC quality control calculations)"
    cpg: "(For motif finding, use CpG% sequence bias correction, default: GC%)"
    tag_go: "(perform Genome Ontology Analysis on tags - need ~ 3Gbs of memory)"
    len: ",10,12 -S 25 -size 200"
    inputdirectory_go_expdirectorygoanalysis: "INPUT_DIRECTORY -go EXP_DIRECTORY/GOanalysis"
    exp_tag_directory: ""
    genome: ""
    global: ""
    specific: ""
  }
}