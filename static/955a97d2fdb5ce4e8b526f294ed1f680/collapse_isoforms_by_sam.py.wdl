version 1.0

task CollapseIsoformsBySampy {
  input {
    File? input_fafq_filename
    Boolean? fq
    File? sam
    File? prefix
    Int? min_coverage
    Int? min_identity
    Int? max_fuzzy_junction
    Int? max_five_diff
    Int? max_three_diff
    String? fl_nc_coverage
    Boolean? gen_mol_count
    Boolean? dun_merge_five_shorter
  }
  command <<<
    collapse_isoforms_by_sam_py \
      ~{if defined(input_fafq_filename) then ("--input " +  '"' + input_fafq_filename + '"') else ""} \
      ~{if (fq) then "--fq" else ""} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_fuzzy_junction) then ("--max_fuzzy_junction " +  '"' + max_fuzzy_junction + '"') else ""} \
      ~{if defined(max_five_diff) then ("--max_5_diff " +  '"' + max_five_diff + '"') else ""} \
      ~{if defined(max_three_diff) then ("--max_3_diff " +  '"' + max_three_diff + '"') else ""} \
      ~{if defined(fl_nc_coverage) then ("--flnc_coverage " +  '"' + fl_nc_coverage + '"') else ""} \
      ~{if (gen_mol_count) then "--gen_mol_count" else ""} \
      ~{if (dun_merge_five_shorter) then "--dun-merge-5-shorter" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    input_fafq_filename: "Input FA/FQ filename"
    fq: "Input is a fastq file (default is fasta)"
    sam: "Sorted GMAP SAM filename"
    prefix: "Output filename prefix"
    min_coverage: "Minimum alignment coverage (default: 0.99)"
    min_identity: "Minimum alignment identity (default: 0.95)"
    max_fuzzy_junction: "Max fuzzy junction dist (default: 5 bp)"
    max_five_diff: "Maximum allowed 5' difference if on same exon\\n(default: 1000 bp)"
    max_three_diff: "Maximum allowed 3' difference if on same exon\\n(default: 100 bp)"
    fl_nc_coverage: "Minimum # of FLNC reads, only use this for aligned\\nFLNC reads, otherwise results undefined!"
    gen_mol_count: "Generate a .abundance.txt file based on the number of\\ninput sequences collapsed. Use only if input is FLNC\\nor UMI-dedup output (default: off)"
    dun_merge_five_shorter: "Don't collapse shorter 5' transcripts (default: turned\\noff)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}