class: CommandLineTool
id: concoct_coverage_table.py.cwl
inputs:
- id: in_sample_names
  doc: "File with sample names, one line each. Should be same\nnr of bamfiles. Default\
    \ sample names used are the file\nnames of the bamfiles, excluding the file extension.\n"
  type: File
  inputBinding:
    prefix: --samplenames
- id: in_bed_file
  doc: "Contigs BEDFile with four columns representing:\n'Contig ID, Start Position,\
    \ End Position and SubContig\nID' respectively. The Subcontig ID must contain\
    \ the\npattern 'concoct_part_[0-9]*' while the contigs which\nare not cutup cannot\
    \ contain this pattern. This file\ncan be generated by the cut_up_fasta.py script."
  type: string
  inputBinding:
    position: 0
- id: in_bam_files
  doc: BAM files with mappings to the original contigs.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- concoct_coverage_table.py
