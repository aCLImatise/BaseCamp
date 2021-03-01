version 1.0

task GenConsFromPoapy {
  input {
    Directory? root
    File? poa_path
    File? poa_mat_path
    String? contig
    Int? w_len
    Int? w_ovl_len
    Boolean? verbosity
  }
  command <<<
    gen_cons_from_poa_py \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(poa_path) then ("--poa_path " +  '"' + poa_path + '"') else ""} \
      ~{if defined(poa_mat_path) then ("--poa_mat_path " +  '"' + poa_mat_path + '"') else ""} \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(w_len) then ("--w_len " +  '"' + w_len + '"') else ""} \
      ~{if defined(w_ovl_len) then ("--w_ovl_len " +  '"' + w_ovl_len + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    root: "directory where to look for files (the one given to\\nspectral_layout_from_minimap.py)."
    poa_path: "path/to/poa/poa (path to the executable)"
    poa_mat_path: "path/to/poa-score.mat"
    contig: "index of contig you wish to compute consensus for"
    w_len: "length of consensus windows for POA."
    w_ovl_len: "overlap length between two successive consensus\\nwindows."
    verbosity: "verbosity level (nothing : 0, -v : 1; -vv : 2)"
  }
  output {
    File out_stdout = stdout()
  }
}