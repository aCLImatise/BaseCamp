class: CommandLineTool
id: purge_haplotigs_hist.cwl
inputs:
- id: in_bam_bam_file
  doc: / -bam       BAM file of aligned and sorted reads/subreads to the reference
  type: boolean
  inputBinding:
    prefix: -b
- id: in_genome_reference_fasta
  doc: / -genome    Reference FASTA for the BAM file.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_threads_number_use
  doc: / -threads   Number of worker threads to use, DEFAULT = 4, MINIMUM = 2
  type: boolean
  inputBinding:
    prefix: -t
- id: in_depth_maximum_cutoff
  doc: "/ -depth     Maximum cutoff for depth. DEFAULT = 200, increase if needed,\n\
    set much higher than your expected average coverage.\n"
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- hist
