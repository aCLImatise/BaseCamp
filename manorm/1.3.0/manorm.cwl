class: CommandLineTool
id: ../../../manorm.cwl
inputs:
- id: verbose
  doc: Enable verbose log messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: peak_one
  doc: Peak file of sample 1.
  type: File
  inputBinding:
    prefix: --peak1
- id: peak_two
  doc: Peak file of sample 2.
  type: File
  inputBinding:
    prefix: --peak2
- id: peak_format
  doc: "Format of the peak files. Support ['bed', 'bed3-summit', 'macs', 'macs2',\
    \ 'narrowpeak', 'broadpeak']. Default: bed"
  type: string
  inputBinding:
    prefix: --peak-format
- id: read_one
  doc: Read file of sample 1.
  type: File
  inputBinding:
    prefix: --read1
- id: read_two
  doc: Read file of sample 2.
  type: File
  inputBinding:
    prefix: --read2
- id: read_format
  doc: "Format of the read files. Support ['bed', 'bedpe', 'sam', 'bam']. Default:\
    \ bed"
  type: string
  inputBinding:
    prefix: --read-format
- id: name_one
  doc: Name of sample 1. If not specified, the peak file name will be used.
  type: string
  inputBinding:
    prefix: --name1
- id: name_two
  doc: Name of sample 2. If not specified, the peak file name will be used.
  type: string
  inputBinding:
    prefix: --name2
- id: shift_size_one
  doc: "Single-end reads shift size for sample 1. Reads are shifted by `N` bp towards\
    \ 3' direction and the 5' end of each shifted read is used to represent the genomic\
    \ locus of the DNA fragment. Set to 0.5 * fragment size of the ChIP-seq library.\
    \ Default: 100"
  type: string
  inputBinding:
    prefix: --shiftsize1
- id: shift_size_two
  doc: 'Single-end reads shift size for sample 2. Default: 100'
  type: string
  inputBinding:
    prefix: --shiftsize2
- id: paired_end
  doc: Paired-end mode. The middle point of each read pair is used to represent the
    genomic locus of the DNA fragment. If specified, `--s1` and `--s2` will be ignored.
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: window_size
  doc: 'Window size to count reads and calculate read densities. Set to 2000 is recommended
    for sharp histone marks like H3K4me3 or H3K27ac and 1000 for TFs or DNase-seq.
    Default: 2000'
  type: long
  inputBinding:
    prefix: --window-size
- id: summit_dis
  doc: 'Summit-to-summit distance cutoff for overlapping common peaks. Common peaks
    with summit distance beyond the cutoff are excluded in model fitting. Default:
    `window size` / 4'
  type: string
  inputBinding:
    prefix: --summit-dis
- id: n_random
  doc: 'Number of random simulations to test the enrichment of peak overlap between
    the specified samples. Set to 0 to disable the testing. Default: 10'
  type: string
  inputBinding:
    prefix: --n-random
- id: m_cut_off
  doc: 'Absolute M-value (log2-ratio) cutoff to define the biased (differential binding)
    peaks. Default: 1.0'
  type: double
  inputBinding:
    prefix: --m-cutoff
- id: p_cut_off
  doc: 'P-value cutoff to define the biased peaks. Default: 0.01'
  type: double
  inputBinding:
    prefix: --p-cutoff
- id: output_dir
  doc: 'Output directory. Default: Current working directory'
  type: string
  inputBinding:
    prefix: --output-dir
- id: write_all
  doc: Write two extra output files containing the results of the original (unmerged)
    peaks.
  type: boolean
  inputBinding:
    prefix: --write-all
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- manorm
