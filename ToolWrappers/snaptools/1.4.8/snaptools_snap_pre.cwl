class: CommandLineTool
id: snaptools_snap_pre.cwl
inputs:
- id: in_input_file
  doc: 'input bam, bed or bed.gz file. (default: None)'
  type: File
  inputBinding:
    prefix: --input-file
- id: in_output_snap
  doc: 'output snap file. (default: None)'
  type: File
  inputBinding:
    prefix: --output-snap
- id: in_genome_name
  doc: "genome identifier (i.e. hg19, mm10). This tag does not\nchange anything unless\
    \ merge or compare multiple snap\nfiles. (default: None)"
  type: long
  inputBinding:
    prefix: --genome-name
- id: in_genome_size
  doc: "a txt file contains corresponding genome sizes. It\nmust be in the following\
    \ format with the first column\nthe chromsome name and the second column as chromsome\n\
    length. This tag does not change anything unless merge\nor compare multiple snap\
    \ files. (default: None)"
  type: long
  inputBinding:
    prefix: --genome-size
- id: in_barcode_file
  doc: "a txt file contains pre-selected cell barcodes. If\n--barcode-file is given,\
    \ snaptools will ignore any\nbarcodes not present in the --barcode-file. If it\
    \ is\nNone, snaptools will automatically identify barcodes\nfrom bam file. The\
    \ first column of --barcode-file must\nbe the selected barcodes and the other\
    \ columns could\nbe any attributes of the barcode as desired\n(`ATGCTCTACTAC attr1\
    \ att2`). The attributes, however,\nwill not be kept in the snap file. This tag\
    \ will be\nignored if the output snap file already exists.\n(default: None)"
  type: File
  inputBinding:
    prefix: --barcode-file
- id: in_min_mapq
  doc: "min mappability score. Fargments with mappability\nscore less than --min-mapq\
    \ will be filtered. (default:\n10)"
  type: long
  inputBinding:
    prefix: --min-mapq
- id: in_min_cov
  doc: "min number of fragments per barcode. barcodes of total\nfragments fewer than\
    \ --min-cov will be considered when\ncreating the cell x bin count matrix. Note:\
    \ because\nthe vast majority of barcodes contains very few reads,\nwe found by\
    \ setting --min-cov, one can remove barcodes\nof low coverage without wasting\
    \ time and storage.\nPlease note that this is not selection of good\nbarcodes\
    \ for downstream clustering analysis, it is\nonly filterationof very low-quality\
    \ barcodes.\n(default: 0)"
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_max_num
  doc: "max number of barcodes to store. Barcodes are sorted\nbased on the coverage\
    \ and only the top --max-num\nbarcodes will be stored. (default: 1000000)"
  type: long
  inputBinding:
    prefix: --max-num
- id: in_keep_chrm
  doc: "a boolen tag indicates whether to keep fragments\nmapped to chrM. If set Fasle,\
    \ fragments aligned to the\nmitochondrial sequence will be filtered. (default:\n\
    True)"
  type: string
  inputBinding:
    prefix: --keep-chrm
- id: in_keep_single
  doc: "a boolen tag indicates whether to keep those reads\nwhose mates are not mapped\
    \ or missing. If False,\nunpaired reads will be filtered. If True, unpaired\n\
    reads will be simply treated as a fragment. Note: for\nsingle-end such as scTHS-seq,\
    \ --keep-single must be\nTrue. (default: True)"
  type: string
  inputBinding:
    prefix: --keep-single
- id: in_keep_secondary
  doc: "a boolen tag indicates whether to keep secondary\nalignments. If False, secondary\
    \ alignments will be\nfiltered. If True, a secondary alignments will be\ntreated\
    \ as fragments just single-end. (default: False)"
  type: string
  inputBinding:
    prefix: --keep-secondary
- id: in_keep_discordant
  doc: "a boolen tag indicates whether to keep discordant read\npairs. (default: False)"
  type: string
  inputBinding:
    prefix: --keep-discordant
- id: in_tmp_folder
  doc: "a directory to store temporary files. If not given,\nsnaptools will automatically\
    \ generate a temporary\nlocation to store temporary files. (default: None)"
  type: Directory
  inputBinding:
    prefix: --tmp-folder
- id: in_overwrite
  doc: "a boolen tag indicates whether to overwrite the matrix\nsession if it already\
    \ exists. (default: False)"
  type: string
  inputBinding:
    prefix: --overwrite
- id: in_qc_file
  doc: "a boolen tag indicates whether to create a master qc\nfile. This .qc file\
    \ contains basic quality control\nmetrics at the bulk level. Quality control is\
    \ only\nestimated by selected barcodes only. (default: True)"
  type: File
  inputBinding:
    prefix: --qc-file
- id: in_verbose
  doc: "a boolen tag indicates output the progress. (default:\nTrue)\n"
  type: string
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_snap
  doc: 'output snap file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_snap)
- id: out_barcode_file
  doc: "a txt file contains pre-selected cell barcodes. If\n--barcode-file is given,\
    \ snaptools will ignore any\nbarcodes not present in the --barcode-file. If it\
    \ is\nNone, snaptools will automatically identify barcodes\nfrom bam file. The\
    \ first column of --barcode-file must\nbe the selected barcodes and the other\
    \ columns could\nbe any attributes of the barcode as desired\n(`ATGCTCTACTAC attr1\
    \ att2`). The attributes, however,\nwill not be kept in the snap file. This tag\
    \ will be\nignored if the output snap file already exists.\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_barcode_file)
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-pre
