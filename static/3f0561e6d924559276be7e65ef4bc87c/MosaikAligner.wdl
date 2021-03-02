version 1.0

task MosaikAligner {
  input {
    File? in
    File? out
    File? ibs
    Int? hs
    String? ls
    String? mhp
    String? mhr
    Int? min
    Float? min_p
    String? mm
    Float? mmp
    Boolean? ncg
    Int? bw
    Boolean? lm
    Boolean? kd
    Boolean? pd
    String? sref
    Boolean? omi
    Boolean? om
    Boolean? zn
    Float? gop
    Float? gep
    Float? h_gop
    String all
    String references
    Float one_zero_dot_zero_zero
  }
  command <<<
    MosaikAligner \
      ~{all} \
      ~{references} \
      ~{one_zero_dot_zero_zero} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ibs) then ("-ibs " +  '"' + ibs + '"') else ""} \
      ~{if defined(hs) then ("-hs " +  '"' + hs + '"') else ""} \
      ~{if defined(ls) then ("-ls " +  '"' + ls + '"') else ""} \
      ~{if defined(mhp) then ("-mhp " +  '"' + mhp + '"') else ""} \
      ~{if defined(mhr) then ("-mhr " +  '"' + mhr + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(min_p) then ("-minp " +  '"' + min_p + '"') else ""} \
      ~{if defined(mm) then ("-mm " +  '"' + mm + '"') else ""} \
      ~{if defined(mmp) then ("-mmp " +  '"' + mmp + '"') else ""} \
      ~{if (ncg) then "-ncg" else ""} \
      ~{if defined(bw) then ("-bw " +  '"' + bw + '"') else ""} \
      ~{if (lm) then "-lm" else ""} \
      ~{if (kd) then "-kd" else ""} \
      ~{if (pd) then "-pd" else ""} \
      ~{if defined(sref) then ("-sref " +  '"' + sref + '"') else ""} \
      ~{if (omi) then "-omi" else ""} \
      ~{if (om) then "-om" else ""} \
      ~{if (zn) then "-zn" else ""} \
      ~{if defined(gop) then ("-gop " +  '"' + gop + '"') else ""} \
      ~{if defined(gep) then ("-gep " +  '"' + gep + '"') else ""} \
      ~{if defined(h_gop) then ("-hgop " +  '"' + h_gop + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input read file"
    out: "the output alignment file"
    ibs: "enables colorspace to basespace conversion\\nusing the supplied BASESPACE reference\\narchive"
    hs: "hash size [4 - 32]. def: 15"
    ls: "enable local alignment search for PE reads"
    mhp: "the maximum # of positions stored per seed"
    mhr: "the maximum # of regions for aligning"
    min: "the minimum # of aligned nucleotides"
    min_p: "the minimum alignment percentage [0.0 -\\n1.0]"
    mm: "the # of mismatches allowed"
    mmp: "the percentage of mismatches allowed [0.0\\n- 1.0]"
    ncg: "not count gaps as mismatches"
    bw: "specifies the Smith-Waterman bandwidth.\\ndef: 9"
    lm: "enable low-memory functions"
    kd: "keeps the keys file on disk"
    pd: "keeps the positions file on disk"
    sref: "specifies the prefixes of special"
    omi: "output chromosome ids and positions of\\nmultiply mapped alignments in the\\nmultiple.bam"
    om: "output complete multiply mapped alignments\\nin the multiple.bam"
    zn: "output zn tags"
    gop: "the gap open penalty. def: 15.00"
    gep: "the gap extend penalty. def: 1.00"
    h_gop: "enables the homopolymer gop. def: 4.00"
    all: "-m <mode>                         alignment mode: [unique, all]. def: all"
    references: "-srefn <hashes>                   the maximum special hashes"
    one_zero_dot_zero_zero: "-mms <mismatch score>             the mismatch score. def: -9.00"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}