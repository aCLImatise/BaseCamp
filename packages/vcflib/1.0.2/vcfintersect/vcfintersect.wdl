version 1.0

task Vcfintersect {
  input {
    File? bed
    Int? region
    Boolean? start_only
    Boolean? invert
    File? intersect_vcf
    File? union_vcf
    Int? window_size
    File? reference
    Boolean? loci
    Boolean? ref_match
    String? tag
    String? tag_value
    File? merge_from
    File? vcf_file
  }
  command <<<
    vcfintersect \
      ~{vcf_file} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (start_only) then "--start-only" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(intersect_vcf) then ("--intersect-vcf " +  '"' + intersect_vcf + '"') else ""} \
      ~{if defined(union_vcf) then ("--union-vcf " +  '"' + union_vcf + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (loci) then "--loci" else ""} \
      ~{if (ref_match) then "--ref-match" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(tag_value) then ("--tag-value " +  '"' + tag_value + '"') else ""} \
      ~{if defined(merge_from) then ("--merge-from " +  '"' + merge_from + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    bed: "use intervals provided by this BED file"
    region: "use 1-based tabix-style region (e.g. chrZ:10-20), multiples allowed"
    start_only: "don't use the reference length information in the record to determine\\noverlap status, just use the start posiion"
    invert: "invert the selection, printing only records which would\\nnot have been printed out"
    intersect_vcf: "use this VCF for set intersection generation"
    union_vcf: "use this VCF for set union generation"
    window_size: "compare records up to this many bp away (default 30)"
    reference: "FASTA reference file, required with -i and -u"
    loci: "output whole loci when one alternate allele matches"
    ref_match: "intersect on the basis of record REF string"
    tag: "attach TAG to each record's info field if it would intersect"
    tag_value: "use this value to indicate that the allele is passing\\n'.' will be used otherwise.  default: 'PASS'"
    merge_from: "TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG\\nin the current file."
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}