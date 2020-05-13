class: CommandLineTool
id: gaas_fastq_pairfq_lite.pl.cwl
inputs:
- id: in_file
  doc: For the 'addinfo' method, this would be any FASTA/Q file (or STDIN). For the
    'splitpairs' method, this would be either the forward or reverse file from a paired-end
    sequencing run. For the 'makepairs' method, this would be the interleaved file
    of forward and reverse reads that has been trimmed.
  type: boolean
  inputBinding:
    prefix: --infile
- id: outfile
  doc: The outfile for the 'addinfo' or 'joinpairs' methods (may be STDOUT instead
    of a file).
  type: boolean
  inputBinding:
    prefix: --outfile
- id: forward
  doc: The file of forward sequences from an Illumina paired-end sequencing run.
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: The file of reverse sequences from an Illumina paired-end sequencing run.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: for_w_paired
  doc: The output file to place the paired forward reads.
  type: boolean
  inputBinding:
    prefix: --forw_paired
- id: rev_paired
  doc: The output file to place the paired reverse reads.
  type: boolean
  inputBinding:
    prefix: --rev_paired
- id: for_w_unpaired
  doc: The output file to place the unpaired forward reads.
  type: boolean
  inputBinding:
    prefix: --forw_unpaired
- id: rev_unpaired
  doc: The output file to place the unpaired reverse reads.
  type: boolean
  inputBinding:
    prefix: --rev_unpaired
- id: pair_num
  doc: The pair number to add to the file with the 'addinfo' method. Should be either
    '1' or '2' and other arguments with generate an exception.
  type: boolean
  inputBinding:
    prefix: --pairnum
- id: uppercase
  doc: For the 'addinfo' method, uppercase the sequence.
  type: boolean
  inputBinding:
    prefix: --uppercase
- id: stats
  doc: For the 'makepairs' method, print (to STDOUT) statistics for paired/unpaired
    forward and reverse reads. This is useful for record keeping and debugging. The
    reason this is not the default is that people may want to run multiple instances
    of this command and redirect the output to the same file or to another program.
  type: boolean
  inputBinding:
    prefix: --stats
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fastq_pairfq_lite.pl
