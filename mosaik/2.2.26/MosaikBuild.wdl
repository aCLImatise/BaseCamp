version 1.0

task MosaikBuild {
  input {
    File? fr
    Int? ga
    File? oa
    String? sn
    String? uri
    File? fq
    File? fr_two
    File? fq_two
    String? assign_qual
    File? q_two
    Int? il
    Boolean? split
    String? ds
    Int? id
    Int? ln
    Int? mfl
    Boolean? pu
    Int? sam
    Int? st
    Boolean? tp
    Boolean? ts
  }
  command <<<
    MosaikBuild \
      ~{if defined(fr) then ("-fr " +  '"' + fr + '"') else ""} \
      ~{if defined(ga) then ("-ga " +  '"' + ga + '"') else ""} \
      ~{if defined(oa) then ("-oa " +  '"' + oa + '"') else ""} \
      ~{if defined(sn) then ("-sn " +  '"' + sn + '"') else ""} \
      ~{if defined(uri) then ("-uri " +  '"' + uri + '"') else ""} \
      ~{if defined(fq) then ("-fq " +  '"' + fq + '"') else ""} \
      ~{if defined(fr_two) then ("-fr2 " +  '"' + fr_two + '"') else ""} \
      ~{if defined(fq_two) then ("-fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(assign_qual) then ("-assignQual " +  '"' + assign_qual + '"') else ""} \
      ~{if defined(q_two) then ("-q2 " +  '"' + q_two + '"') else ""} \
      ~{if defined(il) then ("-il " +  '"' + il + '"') else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if defined(ds) then ("-ds " +  '"' + ds + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(ln) then ("-ln " +  '"' + ln + '"') else ""} \
      ~{if defined(mfl) then ("-mfl " +  '"' + mfl + '"') else ""} \
      ~{if (pu) then "-pu" else ""} \
      ~{if defined(sam) then ("-sam " +  '"' + sam + '"') else ""} \
      ~{if defined(st) then ("-st " +  '"' + st + '"') else ""} \
      ~{if (tp) then "-tp" else ""} \
      ~{if (ts) then "-ts" else ""}
  >>>
  parameter_meta {
    fr: "the FASTA reference sequences file"
    ga: "the genome assembly ID. e.g. HG18"
    oa: "the output reference file"
    sn: "the species name. e.g. \\\"Homo sapiens\\\""
    uri: "the URI (e.g. URL or URN)"
    fq: "the FASTA base qualities file"
    fr_two: "the FASTA 2nd mate"
    fq_two: "the FASTA BQ 2nd mate"
    assign_qual: "assigns a quality for each base"
    q_two: "the FASTQ 2nd mate"
    il: "the desired lanes e.g 5678 for lanes 5-8"
    split: "splits the read into two mates"
    ds: "read group description"
    id: "read group ID. e.g. SRR009060"
    ln: "library name. e.g. g1k-sc-NA18944-JPT-1"
    mfl: "median fragment length. e.g. 150"
    pu: "<run name & lane>             the platform unit. e.g. IL12_490_5"
    sam: "sample name. e.g. NA12878"
    st: "sets the sequencing technology: '454',\\n'helicos', 'illumina', 'illumina_long',\\n'sanger' or 'solid'"
    tp: "<# of beginning bases>        trims the first # of bases"
    ts: "<# of end bases>              trims the last # of bases"
  }
  output {
    File out_stdout = stdout()
    File out_oa = "${in_oa}"
  }
}