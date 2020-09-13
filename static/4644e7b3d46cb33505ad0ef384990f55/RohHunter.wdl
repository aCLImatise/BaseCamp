version 1.0

task RohHunter {
  input {
    File? in
    File? out
    File? annotate
    Int? var_min_dp
    Float? var_min_q
    String? var_af_keys
    String? var_af_keys_vep
    Float? roh_min_q
    Int? roh_min_markers
    Float? roh_min_size
    Float? ext_marker_perc
    Float? ext_size_perc
    Boolean? inc_chrx
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    RohHunter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(annotate) then ("-annotate " +  '"' + annotate + '"') else ""} \
      ~{if defined(var_min_dp) then ("-var_min_dp " +  '"' + var_min_dp + '"') else ""} \
      ~{if defined(var_min_q) then ("-var_min_q " +  '"' + var_min_q + '"') else ""} \
      ~{if defined(var_af_keys) then ("-var_af_keys " +  '"' + var_af_keys + '"') else ""} \
      ~{if defined(var_af_keys_vep) then ("-var_af_keys_vep " +  '"' + var_af_keys_vep + '"') else ""} \
      ~{if defined(roh_min_q) then ("-roh_min_q " +  '"' + roh_min_q + '"') else ""} \
      ~{if defined(roh_min_markers) then ("-roh_min_markers " +  '"' + roh_min_markers + '"') else ""} \
      ~{if defined(roh_min_size) then ("-roh_min_size " +  '"' + roh_min_size + '"') else ""} \
      ~{if defined(ext_marker_perc) then ("-ext_marker_perc " +  '"' + ext_marker_perc + '"') else ""} \
      ~{if defined(ext_size_perc) then ("-ext_size_perc " +  '"' + ext_size_perc + '"') else ""} \
      ~{if (inc_chrx) then "-inc_chrx" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input variant list in VCF or GSvar format."
    out: "Output TSV file with ROH regions."
    annotate: "List of BED files used for annotation. Each file adds a column to the output file. The base filename is used as colum name and 4th column of the BED file is used as annotation value.\\nDefault value: ''"
    var_min_dp: "Minimum variant depth ('DP'). Variants with lower depth are excluded from the analysis.\\nDefault value: '20'"
    var_min_q: "Minimum variant quality. Variants with lower quality are excluded from the analysis.\\nDefault value: '30'"
    var_af_keys: "Comma-separated allele frequency info field names in 'in'.\\nDefault value: ''"
    var_af_keys_vep: "Comma-separated VEP CSQ field names of allele frequency annotations in 'in'.\\nDefault value: ''"
    roh_min_q: "Minimum Q score of output ROH regions.\\nDefault value: '30'"
    roh_min_markers: "Minimum marker count of output ROH regions.\\nDefault value: '20'"
    roh_min_size: "Minimum size in Kb of output ROH regions.\\nDefault value: '20'"
    ext_marker_perc: "Percentage of ROH markers that can be spanned when merging ROH regions .\\nDefault value: '1'"
    ext_size_perc: "Percentage of ROH size that can be spanned when merging ROH regions.\\nDefault value: '50'"
    inc_chrx: "Include chrX into the analysis. Excluded by default.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_annotate = "${in_annotate}"
  }
}