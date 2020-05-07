class: CommandLineTool
id: ngsfilter.cwl
inputs:
- id: gh
  doc: 01_11a     cacgcagtc:cacgcatcg    GGGCAATCCTGAGCCAA    CCATTGAGTCTCTGCACCTATC    F
    @ community=Festuca; bucket=1; extraction=1;
  type: string
  inputBinding:
    position: 0
- id: gh
  doc: 01_12a     cacgcatcg:cacgcagtc    GGGCAATCCTGAGCCAA    CCATTGAGTCTCTGCACCTATC    F
    @ community=Festuca; bucket=1; extraction=2;
  type: string
  inputBinding:
    position: 1
- id: gh
  doc: 01_21a     cacgcgcat:cacgctact    GGGCAATCCTGAGCCAA    CCATTGAGTCTCTGCACCTATC    F
    @ community=Festuca; bucket=2; extraction=1;
  type: string
  inputBinding:
    position: 2
- id: gh
  doc: 01_22a     cacgctact:cacgcgcat    GGGCAATCCTGAGCCAA    CCATTGAGTCTCTGCACCTATC    F
    @ community=Festuca; bucket=2; extraction=2;
  type: string
  inputBinding:
    position: 3
- id: gh
  doc: 02_11a     cacgctgag:cacgtacga    GGGCAATCCTGAGCCAA    CCATTGAGTCTCTGCACCTATC    F
    @ community=Festuca; bucket=1; extraction=1;
  type: string
  inputBinding:
    position: 4
- id: gh
  doc: 02_12a     cacgtacga:cacgctgag    GGGCAATCCTGAGCCAA    CCATTGAGTCTCTGCACCTATC    F
    @ community=Festuca; bucket=1; extraction=2;
  type: string
  inputBinding:
    position: 5
- id: tag_list
  doc: File containing the samples definition (with tags, primers, sample names,...)
  type: File
  inputBinding:
    prefix: --tag-list
- id: unidentified
  doc: Filename used to store the sequences unassigned to any sample
  type: File
  inputBinding:
    prefix: --unidentified
- id: e
  doc: '###, --error=### Number of errors allowed for matching primers [default =
    2]'
  type: boolean
  inputBinding:
    prefix: -e
- id: skip
  doc: skip the N first sequences
  type: string
  inputBinding:
    prefix: --skip
- id: only
  doc: treat only N sequences
  type: string
  inputBinding:
    prefix: --only
- id: genbank
  doc: Input file is in genbank format
  type: boolean
  inputBinding:
    prefix: --genbank
- id: embl
  doc: Input file is in embl format
  type: boolean
  inputBinding:
    prefix: --embl
- id: skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean
  inputBinding:
    prefix: --skip-on-error
- id: fast_a
  doc: Input file is in fasta nucleic format (including obitools fasta extentions)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: eco_pcr
  doc: Input file is in ecopcr format
  type: boolean
  inputBinding:
    prefix: --ecopcr
- id: raw_fast_a
  doc: Input file is in fasta format (but more tolerant to format variant)
  type: boolean
  inputBinding:
    prefix: --raw-fasta
- id: sanger
  doc: Input file is in sanger fastq nucleic format (standard fastq)
  type: boolean
  inputBinding:
    prefix: --sanger
- id: solexa
  doc: Input file is in fastq nucleic format produced by solexa sequencer
  type: boolean
  inputBinding:
    prefix: --solexa
- id: eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean
  inputBinding:
    prefix: --ecopcrdb
- id: nuc
  doc: Input file contains nucleic sequences
  type: boolean
  inputBinding:
    prefix: --nuc
- id: prot
  doc: Input file contains protein sequences
  type: boolean
  inputBinding:
    prefix: --prot
- id: fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: eco_pcr_db_output
  doc: Output sequences in ecopcr database format (sequence records are not printed
    on standard output)
  type: string
  inputBinding:
    prefix: --ecopcrdb-output
- id: uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean
  inputBinding:
    prefix: --uppercase
outputs: []
cwlVersion: v1.1
baseCommand:
- ngsfilter
