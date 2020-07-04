version 1.0

task AssignTSStoGene.pl {
  input {
    String? genome
    String? gtf
    Boolean? gid
    String? bed
    String? ref_tss
    Boolean? max_dist_tss
    Boolean? no_keep_ref
    Boolean? keep_orphans
    File? bed_out
    Boolean? three_p
    String tss_peak_file
  }
  command <<<
    assignTSStoGene.pl \
      ~{tss_peak_file} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{true="-gid" false="" gid} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(ref_tss) then ("-refTSS " +  '"' + ref_tss + '"') else ""} \
      ~{true="-d" false="" max_dist_tss} \
      ~{true="-nokeepRef" false="" no_keep_ref} \
      ~{true="-keepOrphans" false="" keep_orphans} \
      ~{if defined(bed_out) then ("-bedOut " +  '"' + bed_out + '"') else ""} \
      ~{true="-3p" false="" three_p}
  >>>
  parameter_meta {
    genome: "(use default homer gene annotation/RefSeq)"
    gtf: "(use custom gene annotation, can also use -gff or -gff3)"
    gid: "(use gene_id with GTF file)"
    bed: "(use custom gene annotation in bed/peak file format)"
    ref_tss: "(only supply reference TSS positions)"
    max_dist_tss: "<#> (max dist from tss to gene allowed, default: 1000)"
    no_keep_ref: "(don't keep reference promoters not found in the tss peak file, default: keep)"
    keep_orphans: "(keep TSS without reference annotation, default: remove)"
    bed_out: "(output genes with new 5'end)"
    three_p: "(do 3' end assignment instead of TSS, assumes peaks are on - strand rel to gene)"
    tss_peak_file: ""
  }
}