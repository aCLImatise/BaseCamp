version 1.0

task GWAMA {
  input {
    String? random
    String? genomic_control
    String? genomic_control_output
    Int? quantitative
    String? threshold
    String? m_marker_positionfile
    Boolean? no_alleles
    Boolean? in_del_alleles
    Boolean? sex
    Boolean? filter
    Boolean? name_marker
    Boolean? name_strand
    Boolean? name_n
    Boolean? name_eaf
    Boolean? name_beta
    Boolean? name_se
    Boolean? name_or
    Boolean? name_or_nine_five_l
    Boolean? name_or_nine_five_u
    String gw_am_a_dot_in
  }
  command <<<
    GWAMA \
      ~{gw_am_a_dot_in} \
      ~{if defined(random) then ("--random " +  '"' + random + '"') else ""} \
      ~{if defined(genomic_control) then ("--genomic_control " +  '"' + genomic_control + '"') else ""} \
      ~{if defined(genomic_control_output) then ("--genomic_control_output " +  '"' + genomic_control_output + '"') else ""} \
      ~{if defined(quantitative) then ("--quantitative " +  '"' + quantitative + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(m_marker_positionfile) then ("--map " +  '"' + m_marker_positionfile + '"') else ""} \
      ~{if (no_alleles) then "--no_alleles" else ""} \
      ~{if (in_del_alleles) then "--indel_alleles" else ""} \
      ~{if (sex) then "--sex" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (name_marker) then "--name_marker" else ""} \
      ~{if (name_strand) then "--name_strand" else ""} \
      ~{if (name_n) then "--name_n" else ""} \
      ~{if (name_eaf) then "--name_eaf" else ""} \
      ~{if (name_beta) then "--name_beta" else ""} \
      ~{if (name_se) then "--name_se" else ""} \
      ~{if (name_or) then "--name_or" else ""} \
      ~{if (name_or_nine_five_l) then "--name_or_95l" else ""} \
      ~{if (name_or_nine_five_u) then "--name_or_95u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    random: "Use random effect correction"
    genomic_control: "Use genomic control for\\nadjusting studies' result files"
    genomic_control_output: "Use  genomic\\ncontrol on meta-analysis summary.\\n(i.e. results  of meta-\\nanalysis are corrected for gc)"
    quantitative: "Use this option, if trait is\\nquantitative (columns BETA & SE).\\nDefault is binary trait (columns OR,\\nOR95_U, OR_95_L)"
    threshold: "or -t {0-1} The p-value threshold\\nfor showing direction. Default = 1"
    m_marker_positionfile: "or -m {filename} Marker position\\nfile for chromosome and position info"
    no_alleles: "No allele information has been given.\\nExpecting always the same EA."
    in_del_alleles: "Allele labes might contain more\\nthan single letter. No strand checks."
    sex: "Run gender-differentiated and gender-\\nheterogeneity analysis. Gender info\\nmust be provided in filelist file.\\n(second column after file names is\\neither M or F) More info in tutorial."
    filter: "Set a filtering based on column\\nheader. It needs 3 arguments: column\\nname, equation [>,<,>=,<=,==,!=],\\nfilter value. Multiple filters can be\\nset."
    name_marker: "alternative header to marker name col"
    name_strand: "alternative header to strand column"
    name_n: "alternative header to sample size col"
    name_eaf: "alternative header to EAF column"
    name_beta: "alternative header to beta column"
    name_se: "alternative header to std. err. col"
    name_or: "alternative header to OR column"
    name_or_nine_five_l: "alternative header to OR 95L column"
    name_or_nine_five_u: "alternative header to OR 95U column"
    gw_am_a_dot_in: "--output {fileroot} or -o  {fileroot} Specify file   "
  }
  output {
    File out_stdout = stdout()
  }
}