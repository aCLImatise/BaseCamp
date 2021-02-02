version 1.0

task RnaclustAlignRangepl {
  input {
    Boolean? range
    Boolean? tgt_dir
    Boolean? dp_dir
    Boolean? cpu
    Boolean? loca_rna_opts
    File? loca_rna_path
    Boolean? man
    String i_j
    String specifies
    String pairwise
    String alignments
    String which
    String will
    String be
    String calculated
  }
  command <<<
    rnaclustAlignRange_pl \
      ~{i_j} \
      ~{specifies} \
      ~{pairwise} \
      ~{alignments} \
      ~{which} \
      ~{will} \
      ~{be} \
      ~{calculated} \
      ~{if (range) then "--range" else ""} \
      ~{if (tgt_dir) then "--tgtdir" else ""} \
      ~{if (dp_dir) then "--dpdir" else ""} \
      ~{if (cpu) then "--cpu" else ""} \
      ~{if (loca_rna_opts) then "--locarna-opts" else ""} \
      ~{if defined(loca_rna_path) then ("--locarna-path " +  '"' + loca_rna_path + '"') else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    range: "<i-j>                          specifies pairwise alignments which will be calculated (e.g. --range 1-100)\\n(required)"
    tgt_dir: "<dir>                          target directory\\n(required)"
    dp_dir: "<dir>                          Directory containing the dotplots\\n(required)s"
    cpu: "<n>                            Number of CPUs available on your machine. Calls to locarna will\\nbe distributed equally between those CPUs. (default: 1)\\n(optional)"
    loca_rna_opts: "<\\\"locarna options\\\">          options passed directly to locarna (must be given as one string)\\n(optional)"
    loca_rna_path: "path to locarna (default: )\\n(optional)"
    man: "full documentation\\n(optional)\\n"
    i_j: ""
    specifies: ""
    pairwise: ""
    alignments: ""
    which: ""
    will: ""
    be: ""
    calculated: ""
  }
  output {
    File out_stdout = stdout()
  }
}