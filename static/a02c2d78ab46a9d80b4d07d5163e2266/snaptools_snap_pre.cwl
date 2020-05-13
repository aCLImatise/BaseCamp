class: CommandLineTool
id: snaptools_snap_pre.cwl
inputs:
- id: input_file
  doc: 'input bam, bed or bed.gz file. (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: output_snap
  doc: 'output snap file. (default: None)'
  type: string
  inputBinding:
    prefix: --output-snap
- id: genome_name
  doc: 'genome identifier (i.e. hg19, mm10). This tag does not change anything unless
    merge or compare multiple snap files. (default: None)'
  type: string
  inputBinding:
    prefix: --genome-name
- id: genome_size
  doc: 'a txt file contains corresponding genome sizes. It must be in the following
    format with the first column the chromsome name and the second column as chromsome
    length. This tag does not change anything unless merge or compare multiple snap
    files. (default: None)'
  type: string
  inputBinding:
    prefix: --genome-size
- id: barcode_file
  doc: 'a txt file contains pre-selected cell barcodes. If --barcode-file is given,
    snaptools will ignore any barcodes not present in the --barcode-file. If it is
    None, snaptools will automatically identify barcodes from bam file. The first
    column of --barcode-file must be the selected barcodes and the other columns could
    be any attributes of the barcode as desired (`ATGCTCTACTAC attr1 att2`). The attributes,
    however, will not be kept in the snap file. This tag will be ignored if the output
    snap file already exists. (default: None)'
  type: string
  inputBinding:
    prefix: --barcode-file
- id: min_mapq
  doc: 'min mappability score. Fargments with mappability score less than --min-mapq
    will be filtered. (default: 10)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: min_flen
  doc: 'min fragment length. Fragments of length shorted than --min-flen will be filtered.
    (default: 0)'
  type: long
  inputBinding:
    prefix: --min-flen
- id: max_flen
  doc: 'max fragment length. Fragments of length longer than --max-flen will be filtered.
    (default: 1000)'
  type: long
  inputBinding:
    prefix: --max-flen
- id: min_cov
  doc: 'min number of fragments per barcode. barcodes of total fragments fewer than
    --min-cov will be considered when creating the cell x bin count matrix. Note:
    because the vast majority of barcodes contains very few reads, we found by setting
    --min-cov, one can remove barcodes of low coverage without wasting time and storage.
    Please note that this is not selection of good barcodes for downstream clustering
    analysis, it is only filterationof very low-quality barcodes. (default: 0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: max_num
  doc: 'max number of barcodes to store. Barcodes are sorted based on the coverage
    and only the top --max-num barcodes will be stored. (default: 1000000)'
  type: long
  inputBinding:
    prefix: --max-num
- id: keep_chrm
  doc: 'a boolen tag indicates whether to keep fragments mapped to chrM. If set Fasle,
    fragments aligned to the mitochondrial sequence will be filtered. (default: True)'
  type: string
  inputBinding:
    prefix: --keep-chrm
- id: keep_single
  doc: 'a boolen tag indicates whether to keep those reads whose mates are not mapped
    or missing. If False, unpaired reads will be filtered. If True, unpaired reads
    will be simply treated as a fragment. Note: for single-end such as scTHS-seq,
    --keep-single must be True. (default: True)'
  type: string
  inputBinding:
    prefix: --keep-single
- id: keep_secondary
  doc: 'a boolen tag indicates whether to keep secondary alignments. If False, secondary
    alignments will be filtered. If True, a secondary alignments will be treated as
    fragments just single-end. (default: False)'
  type: string
  inputBinding:
    prefix: --keep-secondary
- id: keep_discordant
  doc: 'a boolen tag indicates whether to keep discordant read pairs. (default: False)'
  type: string
  inputBinding:
    prefix: --keep-discordant
- id: tmp_folder
  doc: 'a directory to store temporary files. If not given, snaptools will automatically
    generate a temporary location to store temporary files. (default: None)'
  type: string
  inputBinding:
    prefix: --tmp-folder
- id: overwrite
  doc: 'a boolen tag indicates whether to overwrite the matrix session if it already
    exists. (default: False)'
  type: string
  inputBinding:
    prefix: --overwrite
- id: qc_file
  doc: 'a boolen tag indicates whether to create a master qc file. This .qc file contains
    basic quality control metrics at the bulk level. Quality control is only estimated
    by selected barcodes only. (default: True)'
  type: string
  inputBinding:
    prefix: --qc-file
- id: verbose
  doc: 'a boolen tag indicates output the progress. (default: True)'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-pre
