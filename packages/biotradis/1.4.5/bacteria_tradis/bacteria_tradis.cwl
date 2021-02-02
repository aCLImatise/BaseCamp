class: CommandLineTool
id: bacteria_tradis.cwl
inputs:
- id: in_text_file_listing
  doc: ': text file listing fastq files with tradis tags attached'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_tag_search_set
  doc: ': tag to search for (optional.  If not set runs bwa in tagless mode with no
    filtering.)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_reference_genome_fasta
  doc: ': reference genome in fasta format (.fa)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_td
  doc: ': tag direction - 3 or 5 (optional. default = 3)'
  type: boolean
  inputBinding:
    prefix: -td
- id: in_mm
  doc: ': number of mismatches allowed when matching tag (optional. default = 0)'
  type: boolean
  inputBinding:
    prefix: -mm
- id: in_mapping_quality_cutoff
  doc: ': mapping quality cutoff score (optional. default = 30)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_custom_kmer_value_min
  doc: ': custom k-mer value (min seed length) (optional)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_s_malt
  doc: ': use smalt rather than bwa as the mapper'
  type: boolean
  inputBinding:
    prefix: --smalt
- id: in_s_malt_k
  doc: ': custom k-mer value for SMALT mapping (optional)'
  type: boolean
  inputBinding:
    prefix: --smalt_k
- id: in_s_malt_s
  doc: ': custom step size for SMALT mapping (optional)'
  type: boolean
  inputBinding:
    prefix: --smalt_s
- id: in_s_malt_y
  doc: ': custom y parameter for SMALT (optional. default = 0.96)'
  type: boolean
  inputBinding:
    prefix: --smalt_y
- id: in_s_malt_r
  doc: ': custom r parameter for SMALT (optional. default = -1)'
  type: boolean
  inputBinding:
    prefix: --smalt_r
- id: in_number_threads_use
  doc: ': number of threads to use for SMALT and samtools sort (optional. default
    = 1)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_set_defaults_essentiality
  doc: ': set defaults for essentiality experiment (smalt_r = 0, -m = 0)'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_verbose_debugging_output
  doc: ': verbose debugging output'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bacteria_tradis
