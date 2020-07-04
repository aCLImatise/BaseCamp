version 1.0

task GetDistalPeaks.pl {
  input {
    Boolean? absolute_distance_keep
    Boolean? prox
    Boolean? intergenic
    Boolean? intragenic
    Boolean? notts
    String? gtf
    Boolean? gid
    Boolean? targets
  }
  command <<<
    getDistalPeaks.pl \
      ~{true="-d" false="" absolute_distance_keep} \
      ~{true="-prox" false="" prox} \
      ~{true="-intergenic" false="" intergenic} \
      ~{true="-intragenic" false="" intragenic} \
      ~{true="-noTTS" false="" notts} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{true="-gid" false="" gid} \
      ~{true="-targets" false="" targets}
  >>>
  parameter_meta {
    absolute_distance_keep: "<#> (Absolute Distance from TSS to keep, default: 3000)"
    prox: "(keep proximal peaks intead of distal peaks)"
    intergenic: "(keep only intergenic, distal peaks)"
    intragenic: "(keep only intragenic, distal peaks)"
    notts: "(Exclude peaks within 10000 bp of the Transcription termination site)"
    gtf: "(custom gene annotation file, -gff/-gff3 can work, but GTF is better)"
    gid: "(parse GTF file by gene_id instead of transcript_id)"
    targets: "(output target genes instead of peaks)"
  }
}