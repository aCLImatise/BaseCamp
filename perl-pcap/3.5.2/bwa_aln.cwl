class: CommandLineTool
id: bwa_aln.pl.cwl
inputs:
- id: bam
  doc: A list of single lane BAM files, no information is taken from the headers.
    This method has additional processing converted to *.fq.gz to give common start
    point.
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: -o   Folder to output result to.
  type: boolean
  inputBinding:
    prefix: -outdir
- id: reference
  doc: Path to reference genome file *.fa[.gz]
  type: boolean
  inputBinding:
    prefix: -reference
- id: sample
  doc: -s   Sample name to be applied to output file.
  type: boolean
  inputBinding:
    prefix: -sample
- id: threads
  doc: -t   Number of threads to use. [1]
  type: boolean
  inputBinding:
    prefix: -threads
- id: process
  doc: -p   Only process this step then exit, optionally set -index bam2fq - only
    applicable if input is bam aln - Run 'bwa aln' sampe - Run 'bwa sampe' and sorting
    to BAM mark - Run duplicate marking (-index N/A)
  type: boolean
  inputBinding:
    prefix: -process
- id: index
  doc: -i   Optionally restrict '-p' to single job bam2fq - 1..<lane_count> aln -
    1..<lane_count*2> sampe - 1..<lane_count>
  type: boolean
  inputBinding:
    prefix: -index
- id: man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: threads
  doc: Number of threads to be used in processing. If perl is not compiled with threading
    some steps will not run in parallel, however much of the script calls other tools
    that will still utilise this appropriately.
  type: boolean
  inputBinding:
    prefix: -threads
- id: man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: -man
- id: process
  doc: If you want to run the code in a more efficient manner then this allows each
    procesing type to be executed in isolation. You can restrict to a single process
    within the block by specifying -index as well.
  type: boolean
  inputBinding:
    prefix: -process
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa_aln.pl
