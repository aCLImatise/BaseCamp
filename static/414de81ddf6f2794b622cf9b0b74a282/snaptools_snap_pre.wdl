version 1.0

task SnaptoolsSnapPre {
  input {
    String? input_file
    String? output_snap
    String? genome_name
    String? genome_size
    String? barcode_file
    Int? min_mapq
    Int? min_flen
    Int? max_flen
    Int? min_cov
    Int? max_num
    String? keep_chrm
    String? keep_single
    String? keep_secondary
    String? keep_discordant
    String? tmp_folder
    String? overwrite
    String? qc_file
    String? verbose
  }
  command <<<
    snaptools snap-pre \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_snap) then ("--output-snap " +  '"' + output_snap + '"') else ""} \
      ~{if defined(genome_name) then ("--genome-name " +  '"' + genome_name + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(barcode_file) then ("--barcode-file " +  '"' + barcode_file + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_flen) then ("--min-flen " +  '"' + min_flen + '"') else ""} \
      ~{if defined(max_flen) then ("--max-flen " +  '"' + max_flen + '"') else ""} \
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
  parameter_meta {
    input_file: "input bam, bed or bed.gz file. (default: None)"
    output_snap: "output snap file. (default: None)"
    genome_name: "genome identifier (i.e. hg19, mm10). This tag does not change anything unless merge or compare multiple snap files. (default: None)"
    genome_size: "a txt file contains corresponding genome sizes. It must be in the following format with the first column the chromsome name and the second column as chromsome length. This tag does not change anything unless merge or compare multiple snap files. (default: None)"
    barcode_file: "a txt file contains pre-selected cell barcodes. If --barcode-file is given, snaptools will ignore any barcodes not present in the --barcode-file. If it is None, snaptools will automatically identify barcodes from bam file. The first column of --barcode-file must be the selected barcodes and the other columns could be any attributes of the barcode as desired (`ATGCTCTACTAC attr1 att2`). The attributes, however, will not be kept in the snap file. This tag will be ignored if the output snap file already exists. (default: None)"
    min_mapq: "min mappability score. Fargments with mappability score less than --min-mapq will be filtered. (default: 10)"
    min_flen: "min fragment length. Fragments of length shorted than --min-flen will be filtered. (default: 0)"
    max_flen: "max fragment length. Fragments of length longer than --max-flen will be filtered. (default: 1000)"
    min_cov: "min number of fragments per barcode. barcodes of total fragments fewer than --min-cov will be considered when creating the cell x bin count matrix. Note: because the vast majority of barcodes contains very few reads, we found by setting --min-cov, one can remove barcodes of low coverage without wasting time and storage. Please note that this is not selection of good barcodes for downstream clustering analysis, it is only filterationof very low-quality barcodes. (default: 0)"
    max_num: "max number of barcodes to store. Barcodes are sorted based on the coverage and only the top --max-num barcodes will be stored. (default: 1000000)"
    keep_chrm: "a boolen tag indicates whether to keep fragments mapped to chrM. If set Fasle, fragments aligned to the mitochondrial sequence will be filtered. (default: True)"
    keep_single: "a boolen tag indicates whether to keep those reads whose mates are not mapped or missing. If False, unpaired reads will be filtered. If True, unpaired reads will be simply treated as a fragment. Note: for single-end such as scTHS-seq, --keep-single must be True. (default: True)"
    keep_secondary: "a boolen tag indicates whether to keep secondary alignments. If False, secondary alignments will be filtered. If True, a secondary alignments will be treated as fragments just single-end. (default: False)"
    keep_discordant: "a boolen tag indicates whether to keep discordant read pairs. (default: False)"
    tmp_folder: "a directory to store temporary files. If not given, snaptools will automatically generate a temporary location to store temporary files. (default: None)"
    overwrite: "a boolen tag indicates whether to overwrite the matrix session if it already exists. (default: False)"
    qc_file: "a boolen tag indicates whether to create a master qc file. This .qc file contains basic quality control metrics at the bulk level. Quality control is only estimated by selected barcodes only. (default: True)"
    verbose: "a boolen tag indicates output the progress. (default: True)"
  }
}