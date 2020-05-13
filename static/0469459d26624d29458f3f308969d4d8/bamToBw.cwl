class: CommandLineTool
id: bamToBw.pl.cwl
inputs:
- id: bam
  doc: -b   BAM/CRAM file to be processed.
  type: boolean
  inputBinding:
    prefix: -bam
- id: outdir
  doc: -o   Folder to output result to.
  type: boolean
  inputBinding:
    prefix: -outdir
- id: reference
  doc: Path to genome.fa. - Actually using fa.fai but for convention just provide
    '.fa' file
  type: boolean
  inputBinding:
    prefix: -reference
- id: threads
  doc: -t   Number of threads to use. [1]
  type: boolean
  inputBinding:
    prefix: -threads
- id: filter
  doc: -f   Ignore reads with the filter flags [int]
  type: boolean
  inputBinding:
    prefix: -filter
- id: process
  doc: -p   Only process this step then exit, optionally set -index bamToBw - Per
    chromosome BigWigs generateBw - Generates merged BigWig
  type: boolean
  inputBinding:
    prefix: -process
- id: index
  doc: -i   Optionally restrict '-p' to single job bwamem - 1..<lane_count>
  type: boolean
  inputBinding:
    prefix: -index
- id: jobs
  doc: -j   For a parallel step report the number of jobs required
  type: boolean
  inputBinding:
    prefix: -jobs
- id: man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: threads
  doc: Number of threads to be used in processing. If perl is not compiled with threading
    some steps will not run in parallel..
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
- bamToBw.pl
