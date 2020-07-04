version 1.0

task Nucdiff {
  input {
    Boolean? reloc_dist
    Boolean? nuc_mer_opt
    Boolean? filter_opt
    Boolean? delta_file
    Boolean? proc
    Boolean? ref_name_full
    Boolean? query_name_full
    Boolean? vcf
    String reference_dot_fast_a
    String query_dot_fast_a
    String output_dir
    String prefix
  }
  command <<<
    nucdiff \
      ~{reference_dot_fast_a} \
      ~{query_dot_fast_a} \
      ~{output_dir} \
      ~{prefix} \
      ~{true="--reloc_dist" false="" reloc_dist} \
      ~{true="--nucmer_opt" false="" nuc_mer_opt} \
      ~{true="--filter_opt" false="" filter_opt} \
      ~{true="--delta_file" false="" delta_file} \
      ~{true="--proc" false="" proc} \
      ~{true="--ref_name_full" false="" ref_name_full} \
      ~{true="--query_name_full" false="" query_name_full} \
      ~{true="--vcf" false="" vcf}
  >>>
  parameter_meta {
    reloc_dist: "[int]    - Minimum distance between two relocated blocks [10000]"
    nuc_mer_opt: "[NUCMER_OPT] - NUCmer run options. By default, NUCmer will be run with its default parameters values, except the --maxmatch parameter. --maxmatch is hard coded and cannot be changed. To change any other parameter values, type parameter names and new values inside single or double quotation marks."
    filter_opt: "[FILTER_OPT] - Delta-filter run options. By default, it will be run with -q parameter only. -q is hard coded and cannot be changed. To add any other parameter values, type parameter names and their values inside single or double quotation marks."
    delta_file: "[DELTA_FILE] - Path to the already existing delta file (NUCmer output file)"
    proc: "[int]          - Number of processes to be used [1]"
    ref_name_full: "[{yes,no}] - Print full reference names in output files ('yes' value). In case of 'no', everything after the first space will be ignored. ['no']"
    query_name_full: "[{yes,no}] - Print full query names in output files ('yes' value). In case of 'no', everything after the first space will be ignored.['no']"
    vcf: "[{yes,no}]      - Output small and medium local differences in the VCF format"
    reference_dot_fast_a: "- Fasta file with the reference sequences"
    query_dot_fast_a: "- Fasta file with the query sequences"
    output_dir: "- Path to the directory where all intermediate and final results will be stored"
    prefix: "- Name that will be added to all generated files including the ones created by NUCmer"
  }
}