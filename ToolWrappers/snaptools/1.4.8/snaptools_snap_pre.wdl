version 1.0

task SnaptoolsSnappre {
  input {
    File? input_file
    File? output_snap
    Int? genome_name
    Int? genome_size
    File? barcode_file
    Int? min_mapq
    Int? min_cov
    Int? max_num
    String? keep_chrm
    String? keep_single
    String? keep_secondary
    String? keep_discordant
    Directory? tmp_folder
    String? overwrite
    File? qc_file
    String? verbose
  }
  command <<<
    snaptools snap_pre \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_snap) then ("--output-snap " +  '"' + output_snap + '"') else ""} \
      ~{if defined(genome_name) then ("--genome-name " +  '"' + genome_name + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(barcode_file) then ("--barcode-file " +  '"' + barcode_file + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_num) then ("--max-num " +  '"' + max_num + '"') else ""} \
      ~{if defined(keep_chrm) then ("--keep-chrm " +  '"' + keep_chrm + '"') else ""} \
      ~{if defined(keep_single) then ("--keep-single " +  '"' + keep_single + '"') else ""} \
      ~{if defined(keep_secondary) then ("--keep-secondary " +  '"' + keep_secondary + '"') else ""} \
      ~{if defined(keep_discordant) then ("--keep-discordant " +  '"' + keep_discordant + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(overwrite) then ("--overwrite " +  '"' + overwrite + '"') else ""} \
      ~{if defined(qc_file) then ("--qc-file " +  '"' + qc_file + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "input bam, bed or bed.gz file. (default: None)"
    output_snap: "output snap file. (default: None)"
    genome_name: "genome identifier (i.e. hg19, mm10). This tag does not\\nchange anything unless merge or compare multiple snap\\nfiles. (default: None)"
    genome_size: "a txt file contains corresponding genome sizes. It\\nmust be in the following format with the first column\\nthe chromsome name and the second column as chromsome\\nlength. This tag does not change anything unless merge\\nor compare multiple snap files. (default: None)"
    barcode_file: "a txt file contains pre-selected cell barcodes. If\\n--barcode-file is given, snaptools will ignore any\\nbarcodes not present in the --barcode-file. If it is\\nNone, snaptools will automatically identify barcodes\\nfrom bam file. The first column of --barcode-file must\\nbe the selected barcodes and the other columns could\\nbe any attributes of the barcode as desired\\n(`ATGCTCTACTAC attr1 att2`). The attributes, however,\\nwill not be kept in the snap file. This tag will be\\nignored if the output snap file already exists.\\n(default: None)"
    min_mapq: "min mappability score. Fargments with mappability\\nscore less than --min-mapq will be filtered. (default:\\n10)"
    min_cov: "min number of fragments per barcode. barcodes of total\\nfragments fewer than --min-cov will be considered when\\ncreating the cell x bin count matrix. Note: because\\nthe vast majority of barcodes contains very few reads,\\nwe found by setting --min-cov, one can remove barcodes\\nof low coverage without wasting time and storage.\\nPlease note that this is not selection of good\\nbarcodes for downstream clustering analysis, it is\\nonly filterationof very low-quality barcodes.\\n(default: 0)"
    max_num: "max number of barcodes to store. Barcodes are sorted\\nbased on the coverage and only the top --max-num\\nbarcodes will be stored. (default: 1000000)"
    keep_chrm: "a boolen tag indicates whether to keep fragments\\nmapped to chrM. If set Fasle, fragments aligned to the\\nmitochondrial sequence will be filtered. (default:\\nTrue)"
    keep_single: "a boolen tag indicates whether to keep those reads\\nwhose mates are not mapped or missing. If False,\\nunpaired reads will be filtered. If True, unpaired\\nreads will be simply treated as a fragment. Note: for\\nsingle-end such as scTHS-seq, --keep-single must be\\nTrue. (default: True)"
    keep_secondary: "a boolen tag indicates whether to keep secondary\\nalignments. If False, secondary alignments will be\\nfiltered. If True, a secondary alignments will be\\ntreated as fragments just single-end. (default: False)"
    keep_discordant: "a boolen tag indicates whether to keep discordant read\\npairs. (default: False)"
    tmp_folder: "a directory to store temporary files. If not given,\\nsnaptools will automatically generate a temporary\\nlocation to store temporary files. (default: None)"
    overwrite: "a boolen tag indicates whether to overwrite the matrix\\nsession if it already exists. (default: False)"
    qc_file: "a boolen tag indicates whether to create a master qc\\nfile. This .qc file contains basic quality control\\nmetrics at the bulk level. Quality control is only\\nestimated by selected barcodes only. (default: True)"
    verbose: "a boolen tag indicates output the progress. (default:\\nTrue)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_snap = "${in_output_snap}"
    File out_barcode_file = "${in_barcode_file}"
  }
}