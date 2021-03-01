class: CommandLineTool
id: FEELnc_filter.pl.cwl
inputs:
- id: in_man
  doc: Open man page
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_verbosity
  doc: Level of verbosity 0, 1 and 2 [default 1]
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_in_file
  doc: Specify the GTF file to be filtered (such as a cufflinks transcripts/merged
    .GTF file)
  type: File?
  inputBinding:
    prefix: --infile
- id: in_mrna_file
  doc: Specify the annotation GTF file to be filtered on based on sense exon overlap
    (file of protein coding annotation)
  type: File?
  inputBinding:
    prefix: --mRNAfile
- id: in_size
  doc: Keep transcript with a minimal size (default 200)
  type: long?
  inputBinding:
    prefix: --size
- id: in_biotype
  doc: 'Only consider transcript(s) from the reference annotation having this(these)
    biotype(s) (e.g : -b transcript_biotype=protein_coding,pseudogene) [default undef
    i.e all transcripts]'
  type: boolean?
  inputBinding:
    prefix: --biotype
- id: in_linc_only
  doc: Keep only long intergenic/interveaning ncRNAs [default FALSE]
  type: boolean?
  inputBinding:
    prefix: --linconly
- id: in_mono_ex
  doc: '=-1|0|1             Keep monoexonic transcript(s): mode to be selected from
    : -1 keep monoexonic antisense (for RNASeq stranded protocol), 1 keep all monoexonic,
    0 remove all monoexonic   [default 0]'
  type: boolean?
  inputBinding:
    prefix: --monoex
- id: in_biex
  doc: Discard biexonic transcripts having one exon size lower to this value (default
    25)
  type: long?
  inputBinding:
    prefix: --biex
- id: in_min_frac_over
  doc: Minimal fraction out of the candidate lncRNA size to be considered for overlap
    [default 0 i.e 1nt]
  type: long?
  inputBinding:
    prefix: --minfrac_over
- id: in_proc
  doc: Number of thread for computing overlap [default 4]
  type: long?
  inputBinding:
    prefix: --proc
- id: in_out_log
  doc: Specify the log file of output which [default infile.log]
  type: File?
  inputBinding:
    prefix: --outlog
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_log
  doc: Specify the log file of output which [default infile.log]
  type: File?
  outputBinding:
    glob: $(inputs.in_out_log)
hints: []
cwlVersion: v1.1
baseCommand:
- FEELnc_filter.pl
