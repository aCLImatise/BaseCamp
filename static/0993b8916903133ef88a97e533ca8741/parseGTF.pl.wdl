version 1.0

task ParseGTFpl {
  input {
    Boolean? gff
    Boolean? gff_three
    Boolean? gid
    Boolean? tid
    Boolean? remove_acc_ver
    Boolean? remove_ensembl_ver
    Int? features
    Boolean? keep_all
    Boolean? ann_tss_start_offset
    Boolean? an_nts_send_offset
    Boolean? ann_tts_start_offset
    Boolean? an_ntt_send_offset
    File gtf_format_file
    String mode
  }
  command <<<
    parseGTF_pl \
      ~{gtf_format_file} \
      ~{mode} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (gff_three) then "-gff3" else ""} \
      ~{if (gid) then "-gid" else ""} \
      ~{if (tid) then "-tid" else ""} \
      ~{if (remove_acc_ver) then "-removeAccVer" else ""} \
      ~{if (remove_ensembl_ver) then "-removeEnsemblVer" else ""} \
      ~{if defined(features) then ("-features " +  '"' + features + '"') else ""} \
      ~{if (keep_all) then "-keepAll" else ""} \
      ~{if (ann_tss_start_offset) then "-annTSSstartOffset" else ""} \
      ~{if (an_nts_send_offset) then "-annTSSendOffset" else ""} \
      ~{if (ann_tts_start_offset) then "-annTTSstartOffset" else ""} \
      ~{if (an_ntt_send_offset) then "-annTTSendOffset" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}