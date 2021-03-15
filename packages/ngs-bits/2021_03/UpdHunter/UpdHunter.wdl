version 1.0

task UpdHunter {
  input {
    File? in
    String? header_name_child
    String? header_name_father
    String? header_name_mother
    File? out
    File? exclude
    Int? var_min_dp
    Float? var_min_q
    Boolean? var_use_indels
    Float? ext_marker_perc
    Float? ext_size_perc
    Float? reg_min_kb
    Int? reg_min_markers
    Float? reg_min_q
    Boolean? debug
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    UpdHunter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(header_name_child) then ("-c " +  '"' + header_name_child + '"') else ""} \
      ~{if defined(header_name_father) then ("-f " +  '"' + header_name_father + '"') else ""} \
      ~{if defined(header_name_mother) then ("-m " +  '"' + header_name_mother + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(var_min_dp) then ("-var_min_dp " +  '"' + var_min_dp + '"') else ""} \
      ~{if defined(var_min_q) then ("-var_min_q " +  '"' + var_min_q + '"') else ""} \
      ~{if (var_use_indels) then "-var_use_indels" else ""} \
      ~{if defined(ext_marker_perc) then ("-ext_marker_perc " +  '"' + ext_marker_perc + '"') else ""} \
      ~{if defined(ext_size_perc) then ("-ext_size_perc " +  '"' + ext_size_perc + '"') else ""} \
      ~{if defined(reg_min_kb) then ("-reg_min_kb " +  '"' + reg_min_kb + '"') else ""} \
      ~{if defined(reg_min_markers) then ("-reg_min_markers " +  '"' + reg_min_markers + '"') else ""} \
      ~{if defined(reg_min_q) then ("-reg_min_q " +  '"' + reg_min_q + '"') else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input VCF file of trio."
    header_name_child: "Header name of child."
    header_name_father: "Header name of father."
    header_name_mother: "Header name of mother."
    out: "Output TSV file containing the detected UPDs."
    exclude: "BED file with regions to exclude, e.g. copy-number variant regions.\\nDefault value: ''"
    var_min_dp: "Minimum depth (DP) of a variant (in all three samples).\\nDefault value: '20'"
    var_min_q: "Minimum quality (QUAL) of a variant.\\nDefault value: '30'"
    var_use_indels: "Also use InDels. The default is to use SNVs only.\\nDefault value: 'false'"
    ext_marker_perc: "Percentage of markers that can be spanned when merging adjacent regions .\\nDefault value: '1'"
    ext_size_perc: "Percentage of base size that can be spanned when merging adjacent regions.\\nDefault value: '20'"
    reg_min_kb: "Mimimum size in kilo-bases required for a UPD region.\\nDefault value: '1000'"
    reg_min_markers: "Mimimum number of UPD markers required in a region.\\nDefault value: '15'"
    reg_min_q: "Mimimum Q-score required for a UPD region.\\nDefault value: '20'"
    debug: "Enable verbose debug output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}