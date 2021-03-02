version 1.0

task MetaCHIPFilterHGT {
  input {
    File? txt_file_containing
    Int? hgts_detected_levels
    Directory? plot
    String? ffn
    String? faa
  }
  command <<<
    MetaCHIP filter_HGT \
      ~{if defined(txt_file_containing) then ("-i " +  '"' + txt_file_containing + '"') else ""} \
      ~{if defined(hgts_detected_levels) then ("-n " +  '"' + hgts_detected_levels + '"') else ""} \
      ~{if defined(plot) then ("-plot " +  '"' + plot + '"') else ""} \
      ~{if defined(ffn) then ("-ffn " +  '"' + ffn + '"') else ""} \
      ~{if defined(faa) then ("-faa " +  '"' + faa + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0"
  }
  parameter_meta {
    txt_file_containing: "txt file containing detected HGTs, e.g.\\n[prefix]_[ranks]_detected_HGTs.txt"
    hgts_detected_levels: "HGTs detected at least n levels, 2 <= n <= 5"
    plot: "flanking plots folder"
    ffn: "get nucleotide sequences for qualified HGTs"
    faa: "get amino acid sequences for qualified HGTs"
  }
  output {
    File out_stdout = stdout()
  }
}