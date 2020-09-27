version 1.0

task GetDistalPeakspl {
  input {
    Boolean? absolute_distance_keep
    Boolean? prox
    Boolean? intergenic
    Boolean? intragenic
    Boolean? notts
    File? gtf
    Boolean? gid
    Boolean? targets
  }
  command <<<
    getDistalPeaks_pl \
      ~{if (absolute_distance_keep) then "-d" else ""} \
      ~{if (prox) then "-prox" else ""} \
      ~{if (intergenic) then "-intergenic" else ""} \
      ~{if (intragenic) then "-intragenic" else ""} \
      ~{if (notts) then "-noTTS" else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if (gid) then "-gid" else ""} \
      ~{if (targets) then "-targets" else ""}
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
  output {
    File out_stdout = stdout()
  }
}