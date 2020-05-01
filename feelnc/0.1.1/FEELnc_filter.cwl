#!/usr/bin/env cwl-runner

baseCommand:
- FEELnc_filter.pl
class: CommandLineTool
cwlVersion: v1.0
id: feelnc_filter.pl
inputs:
- doc: Open man page
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Level of verbosity 0, 1 and 2 [default 1]
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: boolean
- doc: Specify the GTF file to be filtered (such as a cufflinks transcripts/merged
    .GTF file)
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: Specify the annotation GTF file to be filtered on based on sense exon overlap
    (file of protein coding annotation)
  id: mrna_file
  inputBinding:
    prefix: --mRNAfile
  type: File
- doc: =200               Keep transcript with a minimal size (default 200)
  id: size
  inputBinding:
    prefix: --size
  type: boolean
- doc: 'Only consider transcript(s) from the reference annotation having this(these)
    biotype(s) (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef
    i.e all transcripts]'
  id: biotype
  inputBinding:
    prefix: --biotype
  type: boolean
- doc: Keep only long intergenic/interveaning ncRNAs [default FALSE]
  id: linc_only
  inputBinding:
    prefix: --linconly
  type: boolean
- doc: '=-1|0|1             Keep monoexonic transcript(s): mode to be selected from
    : -1 keep monoexonic antisense (for RNASeq stranded protocol), 1 keep all monoexonic,
    0 remove all monoexonic   [default 0]'
  id: mono_ex
  inputBinding:
    prefix: --monoex
  type: boolean
- doc: =25                   Discard biexonic transcripts having one exon size lower
    to this value (default 25)
  id: biex
  inputBinding:
    prefix: --biex
  type: boolean
- doc: =0         Minimal fraction out of the candidate lncRNA size to be considered
    for overlap [default 0 i.e 1nt]
  id: min_frac_over
  inputBinding:
    prefix: --minfrac_over
  type: boolean
- doc: =4                 Number of thread for computing overlap [default 4]
  id: proc
  inputBinding:
    prefix: --proc
  type: boolean
- doc: Specify the log file of output which [default infile.log]
  id: out_log
  inputBinding:
    prefix: --outlog
  type: File
