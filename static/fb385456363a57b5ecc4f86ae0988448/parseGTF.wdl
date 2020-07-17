version 1.0

task ParseGTF.pl {
  input {
    Boolean? gff
    Boolean? gff_three
    Boolean? gid
    Boolean? tid
    Boolean? remove_acc_ver
    Boolean? remove_ensembl_ver
    String? features
    Boolean? keep_all
    Boolean? ann_tss_start_offset
    Boolean? an_nts_send_offset
    Boolean? ann_tts_start_offset
    Boolean? an_ntt_send_offset
    String gtf_format_file
    String mode
  }
  command <<<
    parseGTF.pl \
      ~{gtf_format_file} \
      ~{mode} \
      ~{true="-gff" false="" gff} \
      ~{true="-gff3" false="" gff_three} \
      ~{true="-gid" false="" gid} \
      ~{true="-tid" false="" tid} \
      ~{true="-removeAccVer" false="" remove_acc_ver} \
      ~{true="-removeEnsemblVer" false="" remove_ensembl_ver} \
      ~{if defined(features) then ("-features " +  '"' + features + '"') else ""} \
      ~{true="-keepAll" false="" keep_all} \
      ~{true="-annTSSstartOffset" false="" ann_tss_start_offset} \
      ~{true="-annTSSendOffset" false="" an_nts_send_offset} \
      ~{true="-annTTSstartOffset" false="" ann_tts_start_offset} \
      ~{true="-annTTSendOffset" false="" an_ntt_send_offset}
  >>>
  parameter_meta {
    gff: "(input file is gff format-treats 9th column as ID)"
    gff_three: "(input file is gff3 format - looks for parent attribute to assign gene name)"
    gid: "(use gene IDs as the primary identifier)"
    tid: "(use transcript IDs as the primary identifier, default)"
    remove_acc_ver: "(Normally any .1, .2, etc. at end of accession numbers, i.e. AT1G01040.2)"
    remove_ensembl_ver: "(remove 'transcript:' and '_T01' style ids)"
    features: "[feature2] ... (Features to report, default: exon)"
    keep_all: "(Normally, only transcripts with exon annotations are used)"
    ann_tss_start_offset: "<#> (distance upstream of TSS to start promoter annotation, default: -1000)"
    an_nts_send_offset: "<#> (distance upstream of TSS to start promoter annotation, default: 100)"
    ann_tts_start_offset: "<#> (distance upstream of TSS to start promoter annotation, default: -100)"
    an_ntt_send_offset: "<#> (distance upstream of TSS to start promoter annotation, default: 1000)"
    gtf_format_file: ""
    mode: ""
  }
}