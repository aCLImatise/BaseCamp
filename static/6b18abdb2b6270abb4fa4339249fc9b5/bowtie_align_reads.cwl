class: CommandLineTool
id: bowtie_align_reads.py.cwl
inputs:
- id: reference
  doc: Reference genome in fasta format. If you have multiple reference files, please
    use multipe -r options. If you have aready index the reference sequences, you
    should use the -i option.
  type: string
  inputBinding:
    prefix: --reference
- id: index
  doc: Use the supplied bowtie index file, instead of indexing the genome in the script.
    If your genome index files are in folder /user/home/index, with names TAIR10.1.ebwt,
    TAIR10.2.ebwt, etc, you must use -i /user/home/index/TAIR10 for the -i option.
  type: string
  inputBinding:
    prefix: --index
- id: temp
  doc: Temporary folder to hold the bowtie index files. If not supplied, the current
    directory is used. Only used with -r.
  type: string
  inputBinding:
    prefix: --temp
- id: allowed_mismatch
  doc: -v option in bowtie. Number of mismatches allowed. Default is 0.
  type: string
  inputBinding:
    prefix: --allowedmismatch
- id: multi_alignment
  doc: -k option in bowtie.  Report up to <int> vaild alignment. Default is 20.
  type: string
  inputBinding:
    prefix: --multialignment
- id: processor
  doc: Use multiple threads to do alignment.
  type: string
  inputBinding:
    prefix: --processor
- id: filter_unmapped
  doc: Filter out unmapped alignments in the output.
  type: boolean
  inputBinding:
    prefix: --filterunmapped
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie-align-reads.py
