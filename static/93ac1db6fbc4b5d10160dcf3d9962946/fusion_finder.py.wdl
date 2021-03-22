version 1.0

task FusionFinderpy {
  input {
    File? input_fafq_filename
    Boolean? fq
    File? sam
    File? prefix
    String? cluster_report_csv
    Boolean? is_fl_nc
    Boolean? dun_merge_five_shorter
    Int? min_locus_coverage
    Int? min_locus_coverage_bp
    Int? min_total_coverage
    Int? min_dist_between_loci
    Int? min_identity
  }
  command <<<
    fusion_finder_py \
      ~{if defined(input_fafq_filename) then ("--input " +  '"' + input_fafq_filename + '"') else ""} \
      ~{if (fq) then "--fq" else ""} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(cluster_report_csv) then ("--cluster_report_csv " +  '"' + cluster_report_csv + '"') else ""} \
      ~{if (is_fl_nc) then "--is_flnc" else ""} \
      ~{if (dun_merge_five_shorter) then "--dun-merge-5-shorter" else ""} \
      ~{if defined(min_locus_coverage) then ("--min_locus_coverage " +  '"' + min_locus_coverage + '"') else ""} \
      ~{if defined(min_locus_coverage_bp) then ("--min_locus_coverage_bp " +  '"' + min_locus_coverage_bp + '"') else ""} \
      ~{if defined(min_total_coverage) then ("--min_total_coverage " +  '"' + min_total_coverage + '"') else ""} \
      ~{if defined(min_dist_between_loci) then ("--min_dist_between_loci " +  '"' + min_dist_between_loci + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    input_fafq_filename: "Input FA/FQ filename"
    fq: "Input is a fastq file (default is fasta)"
    sam: "Sorted GMAP SAM filename"
    prefix: "Output filename prefix"
    cluster_report_csv: "cluster_report.csv, optional, if given will generate\\ncount info."
    is_fl_nc: "Input are individual FLNC reads. If this option used,"
    dun_merge_five_shorter: "Don't collapse shorter 5' transcripts (default: turned\\noff)"
    min_locus_coverage: "Minimum per-locus coverage in percentage (default:\\n0.05)"
    min_locus_coverage_bp: "Minimum per-locus coverage in bp (default: 1 bp)"
    min_total_coverage: "Minimum total coverage (default: 0.99)"
    min_dist_between_loci: "Minimum distance between loci, in bp (default: 10000)"
    min_identity: "Minimum alignment identity (default: 0.95)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}