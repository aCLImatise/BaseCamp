version 1.0

task RnaclustAlignRange.pl {
  input {
    Boolean? range
    Boolean? tgt_dir
    Boolean? dp_dir
    Boolean? cpu
    Boolean? loca_rna_opts
    File? loca_rna_path
    Boolean? man
  }
  command <<<
    rnaclustAlignRange.pl \
      ~{true="--range" false="" range} \
      ~{true="--tgtdir" false="" tgt_dir} \
      ~{true="--dpdir" false="" dp_dir} \
      ~{true="--cpu" false="" cpu} \
      ~{true="--locarna-opts" false="" loca_rna_opts} \
      ~{if defined(loca_rna_path) then ("--locarna-path " +  '"' + loca_rna_path + '"') else ""} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    range: "<i-j>                          specifies pairwise alignments which will be calculated (e.g. --range 1-100) (required)"
    tgt_dir: "<dir>                          target directory (required)"
    dp_dir: "<dir>                          Directory containing the dotplots (required)s"
    cpu: "<n>                            Number of CPUs available on your machine. Calls to locarna will  be distributed equally between those CPUs. (default: 1)  (optional)"
    loca_rna_opts: "<\"locarna options\">          options passed directly to locarna (must be given as one string) (optional)"
    loca_rna_path: "path to locarna (default: ) (optional)"
    man: "full documentation (optional)"
  }
}