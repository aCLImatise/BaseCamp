class: CommandLineTool
id: ../../../.checkm_genome_post_link.sh.cwl
inputs:
- id: in___httpsdataaceuqeduaupubliccheckmdatabasescheckmdatatargz
  doc: :37:47--  https://data.ace.uq.edu.au/public/CheckM_databases/checkm_data_2015_01_16.tar.gz
  type: long
  inputBinding:
    prefix: --2020-09-09
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- .checkm-genome-post-link.sh
