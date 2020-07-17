version 1.0

task HtsboxPileup {
  input {
    File? reference_genome
    String? region
    File? bed_position_list
    Int? minimum_base_quality
    Int? minimum_mapping_quality
    Int? minimum_query_length
    Int? minimum_supplementary_alignment
    Float? ignore_queries_perbase
    Int? ignore_bases_intbp
    Boolean? base_quality_depth
    Int? drop_alleles_depthint
    Boolean? use_mark_deleted
    Boolean? show_variants_only
    Boolean? output_vcf_v
    Boolean? show_count_allele
    Boolean? output_consensus_fasta
    Boolean? majorityallele_fasta_f
    Boolean? randomallele_fasta_f
    String? character_bases_identical
    Float? soft_mask_sumq
    Boolean? unitig_calling_mode
    String pile_up
    String in_one_dot_bam
  }
  command <<<
    htsbox pileup \
      ~{pile_up} \
      ~{in_one_dot_bam} \
      ~{if defined(reference_genome) then ("-f " +  '"' + reference_genome + '"') else ""} \
      ~{if defined(region) then ("-r " +  '"' + region + '"') else ""} \
      ~{if defined(bed_position_list) then ("-b " +  '"' + bed_position_list + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("-Q " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(minimum_mapping_quality) then ("-q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(minimum_query_length) then ("-l " +  '"' + minimum_query_length + '"') else ""} \
      ~{if defined(minimum_supplementary_alignment) then ("-S " +  '"' + minimum_supplementary_alignment + '"') else ""} \
      ~{if defined(ignore_queries_perbase) then ("-V " +  '"' + ignore_queries_perbase + '"') else ""} \
      ~{if defined(ignore_bases_intbp) then ("-T " +  '"' + ignore_bases_intbp + '"') else ""} \
      ~{true="-d" false="" base_quality_depth} \
      ~{if defined(drop_alleles_depthint) then ("-s " +  '"' + drop_alleles_depthint + '"') else ""} \
      ~{true="-e" false="" use_mark_deleted} \
      ~{true="-v" false="" show_variants_only} \
      ~{true="-c" false="" output_vcf_v} \
      ~{true="-C" false="" show_count_allele} \
      ~{true="-F" false="" output_consensus_fasta} \
      ~{true="-M" false="" majorityallele_fasta_f} \
      ~{true="-R" false="" randomallele_fasta_f} \
      ~{if defined(character_bases_identical) then ("-x " +  '"' + character_bases_identical + '"') else ""} \
      ~{if defined(soft_mask_sumq) then ("-D " +  '"' + soft_mask_sumq + '"') else ""} \
      ~{true="-u" false="" unitig_calling_mode}
  >>>
  parameter_meta {
    reference_genome: "reference genome [null]"
    region: "region [null]"
    bed_position_list: "BED or position list file to include [null]"
    minimum_base_quality: "minimum base quality [0]"
    minimum_mapping_quality: "minimum mapping quality [0]"
    minimum_query_length: "minimum query length [0]"
    minimum_supplementary_alignment: "minimum supplementary alignment length [0]"
    ignore_queries_perbase: "ignore queries with per-base divergence >FLOAT [1]"
    ignore_bases_intbp: "ignore bases within INT-bp from either end of a read [0]"
    base_quality_depth: "base quality as depth"
    drop_alleles_depthint: "drop alleles with depth<INT [1]"
    use_mark_deleted: "use '*' to mark deleted bases"
    show_variants_only: "show variants only"
    output_vcf_v: "output in the VCF format (force -v)"
    show_count_allele: "show count of each allele on both strands"
    output_consensus_fasta: "output the consensus in FASTA"
    majorityallele_fasta_f: "majority-allele FASTA (majfa; force -F)"
    randomallele_fasta_f: "random-allele FASTA (randfa; force -F)"
    character_bases_identical: "character for bases identical to the reference [ref]"
    soft_mask_sumq: "soft mask if sumQ > avgSum+FLOAT*sqrt(avgSum) (force -F) [3.00]"
    unitig_calling_mode: "unitig calling mode (-d -V.01 -S300 -q20 -Q3 -s5)"
    pile_up: ""
    in_one_dot_bam: ""
  }
}