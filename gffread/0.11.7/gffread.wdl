version 1.0

task Gffread {
  input {
    Boolean? discard_transcripts_having
    Boolean? discard_transcripts_shorter
    Boolean? only_show_coordinate
    Boolean? r_option_discard
    Boolean? discard_singleexon_transcripts
    Boolean? coding_only_discard
    String? nc
    Boolean? ignore_locus
    Boolean? use_description_field
    Boolean? seqinfofsize_tabdelimited_file
    Boolean? discard_multiexon_mrnas
    Boolean? discard_mrnas_lack
    Boolean? no_pseudo
    Boolean? in_bed
    Boolean? in_tlf
    Boolean? m_option_also
    Boolean? m_option_no
    Boolean? m_option_enforce
    String input_gff
  }
  command <<<
    gffread \
      ~{input_gff} \
      ~{true="-i" false="" discard_transcripts_having} \
      ~{true="-l" false="" discard_transcripts_shorter} \
      ~{true="-r" false="" only_show_coordinate} \
      ~{true="-R" false="" r_option_discard} \
      ~{true="-U" false="" discard_singleexon_transcripts} \
      ~{true="-C" false="" coding_only_discard} \
      ~{if defined(nc) then ("--nc " +  '"' + nc + '"') else ""} \
      ~{true="--ignore-locus" false="" ignore_locus} \
      ~{true="-A" false="" use_description_field} \
      ~{true="-s" false="" seqinfofsize_tabdelimited_file} \
      ~{true="-N" false="" discard_multiexon_mrnas} \
      ~{true="-J" false="" discard_mrnas_lack} \
      ~{true="--no-pseudo" false="" no_pseudo} \
      ~{true="--in-bed" false="" in_bed} \
      ~{true="--in-tlf" false="" in_tlf} \
      ~{true="-K" false="" m_option_also} \
      ~{true="-Q" false="" m_option_no} \
      ~{true="-Y" false="" m_option_enforce}
  >>>
  parameter_meta {
    discard_transcripts_having: "discard transcripts having an intron larger than <maxintron>"
    discard_transcripts_shorter: "discard transcripts shorter than <minlen> bases"
    only_show_coordinate: "only show transcripts overlapping coordinate range <start>..<end> (on chromosome/contig <chr>, strand <strand> if provided)"
    r_option_discard: "for -r option, discard all transcripts that are not fully  contained within the given range"
    discard_singleexon_transcripts: "discard single-exon transcripts"
    coding_only_discard: "coding only: discard mRNAs that have no CDS features"
    nc: "only: discard mRNAs that have CDS features"
    ignore_locus: ": discard locus features and attributes found in the input"
    use_description_field: "use the description field from <seq_info.fsize> and add it as the value for a 'descr' attribute to the GFF record"
    seqinfofsize_tabdelimited_file: "<seq_info.fsize> is a tab-delimited file providing this info for each of the mapped sequences: <seq-name> <seq-length> <seq-description> (useful for -A option with mRNA/EST/protein mappings)"
    discard_multiexon_mrnas: "discard multi-exon mRNAs that have any intron with a non-canonical splice site consensus (i.e. not GT-AG, GC-AG or AT-AC)"
    discard_mrnas_lack: "discard any mRNAs that either lack initial START codon or the terminal STOP codon, or have an in-frame stop codon (i.e. only print mRNAs with a complete CDS)"
    no_pseudo: ": filter out records matching the 'pseudo' keyword"
    in_bed: ": input should be parsed as BED format (automatic if the input filename ends with .bed*)"
    in_tlf: ": input GFF-like one-line-per-transcript format without exon/CDS features (see --tlf option below); automatic if the input filename ends with .tlf)"
    m_option_also: "for -M option: also discard as redundant the shorter, fully contained transcripts (intron chains matching a part of the container)"
    m_option_no: "for -M option, no longer require boundary containment when assessing redundancy (can be combined with -K); only introns have to match for multi-exon transcripts, and >=80% overlap for single-exon transcripts"
    m_option_enforce: "for -M option, enforce -Q but also discard overlapping single-exon  transcripts, even on the opposite strand (can be combined with -K)"
    input_gff: ""
  }
}