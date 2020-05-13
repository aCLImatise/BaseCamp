class: CommandLineTool
id: diff_bams.pl.cwl
inputs:
- id: bam_a
  doc: -a    The first BAM|CRAM file.
  type: boolean
  inputBinding:
    prefix: -bam_a
- id: bam_b
  doc: -b    The second BAM|CRAM file.
  type: boolean
  inputBinding:
    prefix: -bam_b
- id: ref
  doc: -r    Required for CRAM, genome.fa with co-located fai.
  type: boolean
  inputBinding:
    prefix: -ref
- id: count
  doc: -c    Count flag differences
  type: boolean
  inputBinding:
    prefix: -count
- id: skip_z
  doc: -s    Don't include reads with MAPQ=0 in comparison
  type: boolean
  inputBinding:
    prefix: -skipz
- id: man
  doc: -m    Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: bam_a
  doc: A valid readable BAM file
  type: boolean
  inputBinding:
    prefix: -bam_a
- id: bam_b
  doc: A valid readable BAM file (different to bam_a)
  type: boolean
  inputBinding:
    prefix: -bam_b
- id: skip_z
  doc: As reads with MAPQ zero can end up in multiple locations don't consider them
    as a mismatch.
  type: boolean
  inputBinding:
    prefix: -skipz
- id: man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: -man
outputs: []
cwlVersion: v1.1
baseCommand:
- diff_bams.pl
