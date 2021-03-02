version 1.0

task SansaAnnotate {
  input {
    File? arg_output_annotation
    File? arg_gzipped_file
    Boolean? arg_database_vcfbcf
    Boolean? arg_max_breakpoint
    Boolean? arg_min_size
    Boolean? s
    Boolean? require_matching_types
    Boolean? report_svs_match
    Boolean? arg_gtfgffbed_file
    Boolean? arg_genename_gtfgff
    Boolean? arg_gene_gtfgff
    Boolean? arg_max_distance
    String input_dot_bcf
  }
  command <<<
    sansa annotate \
      ~{input_dot_bcf} \
      ~{if (arg_output_annotation) then "-a" else ""} \
      ~{if (arg_gzipped_file) then "-o" else ""} \
      ~{if (arg_database_vcfbcf) then "-d" else ""} \
      ~{if (arg_max_breakpoint) then "-b" else ""} \
      ~{if (arg_min_size) then "-r" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (require_matching_types) then "-n" else ""} \
      ~{if (report_svs_match) then "-m" else ""} \
      ~{if (arg_gtfgffbed_file) then "-g" else ""} \
      ~{if (arg_genename_gtfgff) then "-i" else ""} \
      ~{if (arg_gene_gtfgff) then "-f" else ""} \
      ~{if (arg_max_distance) then "-t" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sansa:0.0.7--h4369c07_0"
  }
  parameter_meta {
    arg_output_annotation: "[ --anno ] arg (=\\\"anno.bcf\\\")       output annotation VCF/BCF file"
    arg_gzipped_file: "[ --output ] arg (=\\\"query.tsv.gz\\\") gzipped output file for query SVs"
    arg_database_vcfbcf: "[ --db ] arg                       database VCF/BCF file"
    arg_max_breakpoint: "[ --bpoffset ] arg (=50)           max. breakpoint offset"
    arg_min_size: "[ --ratio ] arg (=0.800000012)     min. size ratio smaller SV to larger SV"
    s: "[ --strategy ] arg (=best)         matching strategy [best|all]"
    require_matching_types: "[ --notype ]                       do not require matching SV types"
    report_svs_match: "[ --nomatch ]                      report SVs without match in database\\n(ANNOID=None)"
    arg_gtfgffbed_file: "[ --gtf ] arg                      gtf/gff3/bed file"
    arg_genename_gtfgff: "[ --id ] arg (=gene_name)          gtf/gff3 attribute"
    arg_gene_gtfgff: "[ --feature ] arg (=gene)          gtf/gff3 feature"
    arg_max_distance: "[ --distance ] arg (=1000)         max. distance (0: overlapping features\\nonly)\\n"
    input_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_annotation = "${in_arg_output_annotation}"
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
  }
}