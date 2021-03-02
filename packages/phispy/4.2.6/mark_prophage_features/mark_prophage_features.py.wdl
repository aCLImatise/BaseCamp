version 1.0

task MarkProphageFeaturespy {
  input {
    File? genbank
    File? outdir
    File? pp_coords
    File? table
    Boolean? gzip_files
    Boolean? un_gzip_files
  }
  command <<<
    mark_prophage_features_py \
      ~{if defined(genbank) then ("--genbank " +  '"' + genbank + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(pp_coords) then ("--ppcoords " +  '"' + pp_coords + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (gzip_files) then "--gzip_files" else ""} \
      ~{if (un_gzip_files) then "--ungzip_files" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0"
  }
  parameter_meta {
    genbank: "Path to input GenBank file."
    outdir: "Path to output directory to write updated GenBank(s)."
    pp_coords: "Path to prophage_coordinates.tsv file."
    table: "Path to tab-delimited file with confirmed prophage\\nregions to mark. The file has to have the following\\ncolumns: 1 - path to GenBank file, 2 - replicon id, 3\\n- prophage start coordinate, 4 - prophage end\\ncoordinate, 5 (optional) - prophage name (if not\\nprovided pp1, pp2, etc. will be assigned for each\\nfile)"
    gzip_files: "Gzip all output files. '.gz' extension will be added\\nif missing. [Default: False]"
    un_gzip_files: "Ungzip all output files. '.gz' extension will be\\nremoved if present. [Default: False]"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}