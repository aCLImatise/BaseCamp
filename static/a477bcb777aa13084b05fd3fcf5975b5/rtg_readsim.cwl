class: CommandLineTool
id: rtg_readsim.cwl
inputs:
- id: in_input
  doc: SDF containing input genome
  type: string?
  inputBinding:
    prefix: --input
- id: in_machine
  doc: "select the sequencing technology to model.\nAllowed values are [illumina_se,\n\
    illumina_pe, complete_genomics,\ncomplete_genomics_2, 454_pe, 454_se,\niontorrent]"
  type: long?
  inputBinding:
    prefix: --machine
- id: in_output
  doc: name for reads output SDF
  type: string?
  inputBinding:
    prefix: --output
- id: in_abundance
  doc: "if set, the user-supplied distribution\nrepresents desired abundance"
  type: boolean?
  inputBinding:
    prefix: --abundance
- id: in_allow_unknowns
  doc: "allow reads to be drawn from template\nfragments containing unknown nucleotides"
  type: boolean?
  inputBinding:
    prefix: --allow-unknowns
- id: in_coverage
  doc: coverage, must be positive
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_distribution
  doc: "file containing probability distribution for\nsequence selection"
  type: File?
  inputBinding:
    prefix: --distribution
- id: in_dna_fraction
  doc: "if set, the user-supplied distribution\nrepresents desired DNA fraction"
  type: boolean?
  inputBinding:
    prefix: --dna-fraction
- id: in_max_fragment_size
  doc: maximum fragment size (Default is 250)
  type: long?
  inputBinding:
    prefix: --max-fragment-size
- id: in_min_fragment_size
  doc: minimum fragment size (Default is 200)
  type: long?
  inputBinding:
    prefix: --min-fragment-size
- id: in_n_rate
  doc: "rate that the machine will generate new\nunknowns in the read (Default is\
    \ 0.0)"
  type: double?
  inputBinding:
    prefix: --n-rate
- id: in_num_reads
  doc: number of reads to be generated
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_taxonomy_distribution
  doc: "file containing probability distribution for\nsequence selection expressed\
    \ by taxonomy id"
  type: File?
  inputBinding:
    prefix: --taxonomy-distribution
- id: in_left_read_length
  doc: target read length on the left side
  type: long?
  inputBinding:
    prefix: --left-read-length
- id: in_right_read_length
  doc: target read length on the right side
  type: long?
  inputBinding:
    prefix: --right-read-length
- id: in_read_length
  doc: target read length, must be positive
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_four_five_four_max_total_size
  doc: "maximum 454 read length (in paired end case\nthe sum of the left and the right\
    \ read\nlengths)"
  type: long?
  inputBinding:
    prefix: --454-max-total-size
- id: in_four_five_four_min_total_size
  doc: "minimum 454 read length (in paired end case\nthe sum of the left and the right\
    \ read\nlengths)"
  type: long?
  inputBinding:
    prefix: --454-min-total-size
- id: in_ion_max_total_size
  doc: maximum IonTorrent read length
  type: long?
  inputBinding:
    prefix: --ion-max-total-size
- id: in_ion_min_total_size
  doc: minimum IonTorrent read length
  type: long?
  inputBinding:
    prefix: --ion-min-total-size
- id: in_comment
  doc: comment to include in the generated SDF
  type: string?
  inputBinding:
    prefix: --comment
- id: in_no_names
  doc: do not create read names in the output SDF
  type: boolean?
  inputBinding:
    prefix: --no-names
- id: in_no_qualities
  doc: do not create read qualities in the output
  type: boolean?
  inputBinding:
    prefix: --no-qualities
- id: in_sam_rg
  doc: "|FILE         file containing a single valid read group\nSAM header line or\
    \ a string in the form\n\"@RG\\tID:READGROUP1\\tSM:BACT_SAMPLE\\tPL:ILLUMINA\""
  type: File?
  inputBinding:
    prefix: --sam-rg
- id: in_seed
  doc: seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_sdf
  doc: -q, --qual-range=STRING          set the range of base quality values
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rtg-tools:3.12--0
cwlVersion: v1.1
baseCommand:
- rtg
- readsim
