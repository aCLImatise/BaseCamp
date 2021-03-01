version 1.0

task BsCall {
  input {
    Boolean? no_split
    Boolean? haploid
    Boolean? keep_duplicates
    Boolean? ignore_duplicates
    Boolean? keep_unmatched
    Boolean? extra_stats
    Boolean? right_trim
    Boolean? left_trim
    Boolean? blank_trim
    Int? mapq_threshold
    Int? bq_threshold
    Int? max_template_length
    Int? realign_tolerance
    File? no_compress
    File? contig_bed
    File? dbsnp
    Float? conversion
    Float? reference_bias
  }
  command <<<
    bs_call \
      ~{if (no_split) then "--no-split" else ""} \
      ~{if (haploid) then "--haploid" else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if (ignore_duplicates) then "--ignore-duplicates" else ""} \
      ~{if (keep_unmatched) then "--keep-unmatched" else ""} \
      ~{if (extra_stats) then "--extra-stats" else ""} \
      ~{if (right_trim) then "--right-trim" else ""} \
      ~{if (left_trim) then "--left-trim" else ""} \
      ~{if (blank_trim) then "--blank-trim" else ""} \
      ~{if defined(mapq_threshold) then ("--mapq-threshold " +  '"' + mapq_threshold + '"') else ""} \
      ~{if defined(bq_threshold) then ("--bq-threshold " +  '"' + bq_threshold + '"') else ""} \
      ~{if defined(max_template_length) then ("--max-template-length " +  '"' + max_template_length + '"') else ""} \
      ~{if defined(realign_tolerance) then ("--realign-tolerance " +  '"' + realign_tolerance + '"') else ""} \
      ~{if defined(no_compress) then ("--no-compress " +  '"' + no_compress + '"') else ""} \
      ~{if defined(contig_bed) then ("--contig-bed " +  '"' + contig_bed + '"') else ""} \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(conversion) then ("--conversion " +  '"' + conversion + '"') else ""} \
      ~{if defined(reference_bias) then ("--reference-bias " +  '"' + reference_bias + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_split: "Do not split output on contig"
    haploid: "Assume genome is haploid"
    keep_duplicates: "Don't merge duplicate reads"
    ignore_duplicates: "Ignore duplicate flag from SAM/BAM files"
    keep_unmatched: "Don't discard reads that don't form proper pairs"
    extra_stats: "Generate extra stats files"
    right_trim: "Bases to trim from right of read pair"
    left_trim: "Bases to trim from left of read pair"
    blank_trim: "Don't use trimmed bases for genotype estimation"
    mapq_threshold: "Set MAPQ threshold for selecting reads (default 20)"
    bq_threshold: "Set base quality threshold for calling (default 20)"
    max_template_length: "Set maximum template length for a pair (default 1000)"
    realign_tolerance: "Tolerance for realignment positions (default 8)"
    no_compress: "SAMPLE"
    contig_bed: "(BED)"
    dbsnp: "(dbSNP processed file)"
    conversion: ",<float> Set under and over conversion rates (default 0.01,0.05)"
    reference_bias: "Set bias to reference homozygote (default 2)"
  }
  output {
    File out_stdout = stdout()
    File out_no_compress = "${in_no_compress}"
  }
}