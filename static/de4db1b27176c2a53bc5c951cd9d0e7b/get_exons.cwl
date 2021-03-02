class: CommandLineTool
id: get_exons.cwl
inputs:
- id: in_include_noncoding
  doc: Whether non-coding regions should be included.
  type: boolean?
  inputBinding:
    prefix: --includeNonCoding
- id: in_padding
  doc: "Pad each exon by a number of bases on both sides.\nDefault: 0\nError file\
    \ will be [outputFilename].err.\nTranscript datasource is the full path to the\
    \ directory housing the datasource.\nThis script is experimental and has minimal\
    \ error checking.\nTo create a gene list from GENCODE (and probably ENSEMBL) gtfs:\n\
    egrep \"basic\" gencode.v18.annotation.gtf | sed -r \"s/.+gene_name\\ \"([A-Za-z0-9]+)\"\
    .+/\x01/g\" | sort | uniq >gene_list.txt\nTo append genes from another GENCODE/ENSEMBL\
    \ gtf:\negrep \"basic\" gencode.v18.long_noncoding_RNAs.gtf | sed -r \"s/.+gene_name\\\
    \ \"([A-Za-z0-9]+)\".+/\x01/g\" | sort | uniq >> gene_list.txt\nTo get the output\
    \ of this file into a BED format, for example, with a given gene list and gencode\
    \ datasource :\nget_exons gene_list.txt /my_db_dir/gencode_out2/hg19/gencode_out2.config\
    \ gencode_basic_exons.txt\nawk '{print $2 \"        \" $3 \"  \" $4 \"  \" $1}'\
    \ gencode_basic_exons.txt | sort -k1,1 -k2,2n  > gencode_basic_exons.bed.txt\n\
    Then to merge the exons using bedtools, if you would like:\nmergeBed -nms -i gencode_basic_exons.bed.txt\
    \ > gencode_basic_exons.merged.txt\n"
  type: long?
  inputBinding:
    prefix: --padding
- id: in_input_gene_list_file
  doc: "A simple file with a gene name (usually Hugo Symbol)\non each line"
  type: string
  inputBinding:
    position: 0
- id: in_transcript_ds_config
  doc: Path to transcript datasource config file.
  type: string
  inputBinding:
    position: 1
- id: in_output_file_name
  doc: output path. Must be writable. Will overwrite existing
  type: string
  inputBinding:
    position: 2
- id: in_files_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_exons
