version 1.0

task Mcxassemble {
  input {
    String? use_baseraw_basehdr
    File? hdr
    File? raw
    File? read_single_data
    File? write_file_fname
    Int? digits
    String? xo
    Boolean? write_binary
    Boolean? write_default_result
    File? apply_rowcol_map_file
    File? cmap
    String? rtag
    Boolean? r_map
    String? tag
    String? ctag
    File? skw
    File? prm
    Boolean? check_primary_symmetry
    Boolean? raw_tf
    Boolean? prm_tf
    Boolean? sym_tf
    Int? rv
    Int? re
    Int? ri
    Int? same_entries_vectors
    Boolean? quiet_re
    Boolean? quiet_rv
    Boolean? two_above_combined
    Boolean? help
  }
  command <<<
    mcxassemble \
      ~{if defined(use_baseraw_basehdr) then ("-b " +  '"' + use_baseraw_basehdr + '"') else ""} \
      ~{if defined(hdr) then ("-hdr " +  '"' + hdr + '"') else ""} \
      ~{if defined(raw) then ("-raw " +  '"' + raw + '"') else ""} \
      ~{if defined(read_single_data) then ("-i " +  '"' + read_single_data + '"') else ""} \
      ~{if defined(write_file_fname) then ("-o " +  '"' + write_file_fname + '"') else ""} \
      ~{if defined(digits) then ("-digits " +  '"' + digits + '"') else ""} \
      ~{if defined(xo) then ("-xo " +  '"' + xo + '"') else ""} \
      ~{if (write_binary) then "--write-binary" else ""} \
      ~{if (write_default_result) then "-n" else ""} \
      ~{if defined(apply_rowcol_map_file) then ("-map " +  '"' + apply_rowcol_map_file + '"') else ""} \
      ~{if defined(cmap) then ("-cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(rtag) then ("-rtag " +  '"' + rtag + '"') else ""} \
      ~{if (r_map) then "--rmap" else ""} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""} \
      ~{if defined(ctag) then ("-ctag " +  '"' + ctag + '"') else ""} \
      ~{if defined(skw) then ("-skw " +  '"' + skw + '"') else ""} \
      ~{if defined(prm) then ("-prm " +  '"' + prm + '"') else ""} \
      ~{if (check_primary_symmetry) then "-s" else ""} \
      ~{if (raw_tf) then "-raw-tf" else ""} \
      ~{if (prm_tf) then "-prm-tf" else ""} \
      ~{if (sym_tf) then "-sym-tf" else ""} \
      ~{if defined(rv) then ("-rv " +  '"' + rv + '"') else ""} \
      ~{if defined(re) then ("-re " +  '"' + re + '"') else ""} \
      ~{if defined(ri) then ("-ri " +  '"' + ri + '"') else ""} \
      ~{if defined(same_entries_vectors) then ("-r " +  '"' + same_entries_vectors + '"') else ""} \
      ~{if (quiet_re) then "--quiet-re" else ""} \
      ~{if (quiet_rv) then "--quiet-rv" else ""} \
      ~{if (two_above_combined) then "-q" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    use_baseraw_basehdr: "use base.raw, base.hdr, and optionally base.map"
    hdr: "read header file"
    raw: "read raw data file"
    read_single_data: "read from single data file"
    write_file_fname: "write to file fname"
    digits: "precision to use in interchange format"
    xo: "write to base.suf (default .sym)"
    write_binary: "write result matrices in binary format"
    write_default_result: "do not write default symmetrized result"
    apply_rowcol_map_file: "apply row/col map in file"
    cmap: "apply col map in file"
    rtag: "apply row map in base.tag"
    r_map: "apply row map in base.cmap"
    tag: "apply row/col map in base.tag"
    ctag: "apply col map in base.tag"
    skw: "write skew matrix to file"
    prm: "write primary result to file"
    check_primary_symmetry: "check primary result symmetry by creating skew matrix"
    raw_tf: "<func(arg)[, func(arg)]*> apply unary transformations to raw values"
    prm_tf: "<func(arg)[, func(arg)]*> apply unary transformations to primary matrix"
    sym_tf: "<func(arg)[, func(arg)]*> apply unary transformations to symmetrified matrix"
    rv: "action for repeated vectors"
    re: "action for repeated entries"
    ri: "action for adding image with mirror"
    same_entries_vectors: "same for entries and vectors and matrix"
    quiet_re: "do not warn for repeated entries"
    quiet_rv: "do not warn for repeated vectors"
    two_above_combined: "the two above combined"
    help: "print this help"
  }
  output {
    File out_stdout = stdout()
  }
}