class: CommandLineTool
id: Build_Trinotate_Boilerplate_SQLite_db.pl.cwl
inputs:
- id: in_uniprot_sprot_dot_dat_do_tgz
  doc: "0% |                               |    17k  9:28:30 ETA\runiprot_sprot.dat.gz\
    \   0% |                               |    77k  4:11:00 ETA\runiprot_sprot.dat.gz\
    \   0% |                               |   157k  3:04:37 ETA\runiprot_sprot.dat.gz\
    \   0% |                               |   301k  2:08:22 ETA\runiprot_sprot.dat.gz\
    \   0% |                               |   468k  1:43:10 ETA\runiprot_sprot.dat.gz\
    \   0% |                               |   649k  1:29:15 ETA\runiprot_sprot.dat.gz\
    \   0% |                               |   872k  1:17:28 ETA"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Build_Trinotate_Boilerplate_SQLite_db.pl
