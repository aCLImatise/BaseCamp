version 1.0

task MosaikAligner {
  input {
    String? alignment_mode_def
    String? hs
    String? ls
    String? mhp
    String? mhr
    String? min
    String? min_p
    String? mm
    String? mmp
    Boolean? ncg
    String? bw
    Boolean? lm
    Boolean? kd
    Boolean? pd
    String? sref
    String? s_refn
    Boolean? omi
    Boolean? om
    Boolean? zn
    String? mms
    String? gop
    String? gep
    String? h_gop
  }
  command <<<
    MosaikAligner \
      ~{if defined(alignment_mode_def) then ("-m " +  '"' + alignment_mode_def + '"') else ""} \
      ~{if defined(hs) then ("-hs " +  '"' + hs + '"') else ""} \
      ~{if defined(ls) then ("-ls " +  '"' + ls + '"') else ""} \
      ~{if defined(mhp) then ("-mhp " +  '"' + mhp + '"') else ""} \
      ~{if defined(mhr) then ("-mhr " +  '"' + mhr + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(min_p) then ("-minp " +  '"' + min_p + '"') else ""} \
      ~{if defined(mm) then ("-mm " +  '"' + mm + '"') else ""} \
      ~{if defined(mmp) then ("-mmp " +  '"' + mmp + '"') else ""} \
      ~{true="-ncg" false="" ncg} \
      ~{if defined(bw) then ("-bw " +  '"' + bw + '"') else ""} \
      ~{true="-lm" false="" lm} \
      ~{true="-kd" false="" kd} \
      ~{true="-pd" false="" pd} \
      ~{if defined(sref) then ("-sref " +  '"' + sref + '"') else ""} \
      ~{if defined(s_refn) then ("-srefn " +  '"' + s_refn + '"') else ""} \
      ~{true="-omi" false="" omi} \
      ~{true="-om" false="" om} \
      ~{true="-zn" false="" zn} \
      ~{if defined(mms) then ("-mms " +  '"' + mms + '"') else ""} \
      ~{if defined(gop) then ("-gop " +  '"' + gop + '"') else ""} \
      ~{if defined(gep) then ("-gep " +  '"' + gep + '"') else ""} \
      ~{if defined(h_gop) then ("-hgop " +  '"' + h_gop + '"') else ""}
  >>>
  parameter_meta {
    alignment_mode_def: "alignment mode: [unique, all]. def: all"
    hs: "hash size [4 - 32]. def: 15"
    ls: "enable local alignment search for PE reads"
    mhp: "the maximum # of positions stored per seed"
    mhr: "the maximum # of regions for aligning"
    min: "the minimum # of aligned nucleotides"
    min_p: "the minimum alignment percentage [0.0 - 1.0]"
    mm: "the # of mismatches allowed"
    mmp: "the percentage of mismatches allowed [0.0 - 1.0]"
    ncg: "not count gaps as mismatches"
    bw: "specifies the Smith-Waterman bandwidth. def: 9"
    lm: "enable low-memory functions"
    kd: "keeps the keys file on disk"
    pd: "keeps the positions file on disk"
    sref: "specifies the prefixes of special references"
    s_refn: "the maximum special hashes"
    omi: "output chromosome ids and positions of multiply mapped alignments in the multiple.bam"
    om: "output complete multiply mapped alignments in the multiple.bam"
    zn: "output zn tags"
    mms: "the mismatch score. def: -9.00"
    gop: "the gap open penalty. def: 15.00"
    gep: "the gap extend penalty. def: 1.00"
    h_gop: "enables the homopolymer gop. def: 4.00"
  }
}