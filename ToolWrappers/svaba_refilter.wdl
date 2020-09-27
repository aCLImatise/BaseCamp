version 1.0

task SvabaRefilter {
  input {
    Boolean? verbose
    Boolean? reference_genome
    Boolean? opt_bam
    Boolean? id_string
    Boolean? input_bps
    Boolean? bam
    Boolean? dbsnp_vcf
    Boolean? blacklist
    Boolean? microbial_genome
    Boolean? germline_sv_database
    Boolean? simple_seq_database
    Boolean? lod
    Boolean? lod_dbsnp
    Boolean? lod_somatic
    Boolean? lod_somatic_dbsnp
    Boolean? scale_errors
    Boolean? read_tracking
    String? o
  }
  command <<<
    svaba refilter \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (reference_genome) then "--reference-genome" else ""} \
      ~{if (opt_bam) then "--opt-bam" else ""} \
      ~{if (id_string) then "--id-string" else ""} \
      ~{if (input_bps) then "--input-bps" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (dbsnp_vcf) then "--dbsnp-vcf" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (microbial_genome) then "--microbial-genome" else ""} \
      ~{if (germline_sv_database) then "--germline-sv-database" else ""} \
      ~{if (simple_seq_database) then "--simple-seq-database" else ""} \
      ~{if (lod) then "--lod" else ""} \
      ~{if (lod_dbsnp) then "--lod-dbsnp" else ""} \
      ~{if (lod_somatic) then "--lod-somatic" else ""} \
      ~{if (lod_somatic_dbsnp) then "--lod-somatic-dbsnp" else ""} \
      ~{if (scale_errors) then "--scale-errors" else ""} \
      ~{if (read_tracking) then "--read-tracking" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Select verbosity level (0-4). Default: 1"
    reference_genome: "Path to indexed reference genome to be used by BWA-MEM. Default is Broad hg19 (/seq/reference/...)"
    opt_bam: "Input BAM file to get header from"
    id_string: "String specifying the analysis ID to be used as part of ID common."
    input_bps: "Original bps.txt.gz file"
    bam: "BAM file used to grab header from"
    dbsnp_vcf: "DBsnp database (VCF) to compare indels against"
    blacklist: "BED-file with blacklisted regions to not extract any reads from."
    microbial_genome: "Path to indexed reference genome of microbial sequences to be used by BWA-MEM to filter reads."
    germline_sv_database: "BED file containing sites of known germline SVs. Used as additional filter for somatic SV detection"
    simple_seq_database: "BED file containing sites of simple DNA that can confuse the contig re-alignment."
    lod: "LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF)) [8]"
    lod_dbsnp: "LOD cutoff to classify indel as non-REF (tests AF=0 vs AF=MaxLikelihood(AF)) at DBSnp indel site [5]"
    lod_somatic: "LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5)) [2.5]"
    lod_somatic_dbsnp: "LOD cutoff to classify indel as somatic (tests AF=0 in normal vs AF=ML(0.5)) at DBSnp indel site [4]"
    scale_errors: "Scale the priors that a site is artifact at given repeat count. 0 means assume low (const) error rate [1]"
    read_tracking: "Track supporting reads by qname. Increases file sizes. [off]"
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}