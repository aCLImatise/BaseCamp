class: CommandLineTool
id: deepsvr_prepare_data.cwl
inputs:
- id: header
  doc: / --no-header          Specify whether header is present in sample file
  type: boolean
  inputBinding:
    prefix: --header
- id: skip_bam_read_count
  doc: / --no-skip_bam_readcount If bam readcount files already exist in output directory
    as a result of a prior run of the prepare_data command, skip the bam- readcount
    step
  type: boolean
  inputBinding:
    prefix: --skip_bam_readcount
- id: samples_file_path
  doc: 'File path of tsv file with sample information. File shouldhave the following
    columns in order: sample_name, tumor_bam_path, normal_bam_path, manual_review_file_path,
    reviewer, solid_tumor, reference_genome_fasta_file_path.If the reviewer is specified
    in the manual review file or not available for the dataset leave the column blank.The
    manual review file should have the following columnsin order: chromosome, start,
    stop, reference, variant,call, tag, notes, reviewer. For the manual review filethe
    reviewer column is optional. The solid tumor column should be 0 or 1, 0 denotes
    a blood based tumor and 1 a solid tumor. Labels need to matchabove.'
  type: string
  inputBinding:
    prefix: --samples-file-path
- id: output_dir_path
  doc: 'Specify output directory: Readcount files and compressed pandas dataframe
    will be output here (default:~/training_data)'
  type: string
  inputBinding:
    prefix: --output-dir-path
outputs: []
cwlVersion: v1.1
baseCommand:
- deepsvr
- prepare-data
