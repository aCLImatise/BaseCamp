version 1.0

task Nucdiff {
  input {
    Boolean? reloc_dist
    Boolean? nuc_mer_opt
    Boolean? filter_opt
    File? delta_file
    Boolean? proc
    Boolean? ref_name_full
    Boolean? query_name_full
    Boolean? vcf
    String reference_dot_fast_a
    String query_dot_fast_a
    String output_dir
    String prefix
    String format
  }
  command <<<
    nucdiff \
      ~{reference_dot_fast_a} \
      ~{query_dot_fast_a} \
      ~{output_dir} \
      ~{prefix} \
      ~{format} \
      ~{if (reloc_dist) then "--reloc_dist" else ""} \
      ~{if (nuc_mer_opt) then "--nucmer_opt" else ""} \
      ~{if (filter_opt) then "--filter_opt" else ""} \
      ~{if (delta_file) then "--delta_file" else ""} \
      ~{if (proc) then "--proc" else ""} \
      ~{if (ref_name_full) then "--ref_name_full" else ""} \
      ~{if (query_name_full) then "--query_name_full" else ""} \
      ~{if (vcf) then "--vcf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reloc_dist: "[int]    - Minimum distance between two relocated blocks\\n[10000]"
    nuc_mer_opt: "[NUCMER_OPT]\\n- NUCmer run options. By default, NUCmer will be run\\nwith its default parameters values, except the\\n--maxmatch parameter. --maxmatch is hard coded and\\ncannot be changed. To change any other parameter\\nvalues, type parameter names and new values inside\\nsingle or double quotation marks."
    filter_opt: "[FILTER_OPT]\\n- Delta-filter run options. By default, it will be run\\nwith -q parameter only. -q is hard coded and cannot be\\nchanged. To add any other parameter values, type\\nparameter names and their values inside single or\\ndouble quotation marks."
    delta_file: "[DELTA_FILE]\\n- Path to the already existing delta file (NUCmer\\noutput file)"
    proc: "[int]          - Number of processes to be used [1]"
    ref_name_full: "[{yes,no}]\\n- Print full reference names in output files ('yes'\\nvalue). In case of 'no', everything after the first\\nspace will be ignored. ['no']"
    query_name_full: "[{yes,no}]\\n- Print full query names in output files ('yes'\\nvalue). In case of 'no', everything after the first\\nspace will be ignored.['no']"
    vcf: "[{yes,no}]      - Output small and medium local differences in the VCF"
    reference_dot_fast_a: "- Fasta file with the reference sequences"
    query_dot_fast_a: "- Fasta file with the query sequences"
    output_dir: "- Path to the directory where all intermediate and\\nfinal results will be stored"
    prefix: "- Name that will be added to all generated files\\nincluding the ones created by NUCmer"
    format: "--version             show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
    File out_delta_file = "${in_delta_file}"
  }
}