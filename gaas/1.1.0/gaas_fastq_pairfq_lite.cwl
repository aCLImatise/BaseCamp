#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fastq_pairfq_lite.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fastq_pairfq_lite.pl
inputs:
- doc: For the 'addinfo' method, this would be any FASTA/Q file (or STDIN). For the
    'splitpairs' method, this would be either the forward or reverse file from a paired-end
    sequencing run. For the 'makepairs' method, this would be the interleaved file
    of forward and reverse reads that has been trimmed.
  id: in_file
  inputBinding:
    prefix: --infile
  type: boolean
- doc: The outfile for the 'addinfo' or 'joinpairs' methods (may be STDOUT instead
    of a file).
  id: outfile
  inputBinding:
    prefix: --outfile
  type: boolean
- doc: The file of forward sequences from an Illumina paired-end sequencing run.
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: The file of reverse sequences from an Illumina paired-end sequencing run.
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: The output file to place the paired forward reads.
  id: for_w_paired
  inputBinding:
    prefix: --forw_paired
  type: boolean
- doc: The output file to place the paired reverse reads.
  id: rev_paired
  inputBinding:
    prefix: --rev_paired
  type: boolean
- doc: The output file to place the unpaired forward reads.
  id: for_w_unpaired
  inputBinding:
    prefix: --forw_unpaired
  type: boolean
- doc: The output file to place the unpaired reverse reads.
  id: rev_unpaired
  inputBinding:
    prefix: --rev_unpaired
  type: boolean
- doc: The pair number to add to the file with the 'addinfo' method. Should be either
    '1' or '2' and other arguments with generate an exception.
  id: pair_num
  inputBinding:
    prefix: --pairnum
  type: boolean
- doc: For the 'addinfo' method, uppercase the sequence.
  id: uppercase
  inputBinding:
    prefix: --uppercase
  type: boolean
- doc: For the 'makepairs' method, print (to STDOUT) statistics for paired/unpaired
    forward and reverse reads. This is useful for record keeping and debugging. The
    reason this is not the default is that people may want to run multiple instances
    of this command and redirect the output to the same file or to another program.
  id: stats
  inputBinding:
    prefix: --stats
  type: boolean
