class: CommandLineTool
id: manorm.cwl
inputs:
- id: in_verbose
  doc: Enable verbose log messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_peak_one
  doc: Peak file of sample 1.
  type: File
  inputBinding:
    prefix: --peak1
- id: in_peak_two
  doc: Peak file of sample 2.
  type: File
  inputBinding:
    prefix: --peak2
- id: in_peak_format
  doc: "Format of the peak files. Support ['bed',\n'bed3-summit', 'macs', 'macs2',\
    \ 'narrowpeak',\n'broadpeak']. Default: bed"
  type: long
  inputBinding:
    prefix: --peak-format
- id: in_read_one
  doc: Read file of sample 1.
  type: File
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: Read file of sample 2.
  type: File
  inputBinding:
    prefix: --read2
- id: in_read_format
  doc: "Format of the read files. Support ['bed', 'bedpe',\n'sam', 'bam']. Default:\
    \ bed"
  type: string
  inputBinding:
    prefix: --read-format
- id: in_name_one
  doc: "Name of sample 1. If not specified, the peak file name\nwill be used."
  type: long
  inputBinding:
    prefix: --name1
- id: in_name_two
  doc: "Name of sample 2. If not specified, the peak file name\nwill be used."
  type: long
  inputBinding:
    prefix: --name2
- id: in_shift_size_one
  doc: "Single-end reads shift size for sample 1. Reads are\nshifted by `N` bp towards\
    \ 3' direction and the 5' end\nof each shifted read is used to represent the genomic\n\
    locus of the DNA fragment. Set to 0.5 * fragment size\nof the ChIP-seq library.\
    \ Default: 100"
  type: long
  inputBinding:
    prefix: --shiftsize1
- id: in_shift_size_two
  doc: 'Single-end reads shift size for sample 2. Default: 100'
  type: long
  inputBinding:
    prefix: --shiftsize2
- id: in_paired_end
  doc: "Paired-end mode. The middle point of each read pair is\nused to represent\
    \ the genomic locus of the DNA\nfragment. If specified, `--s1` and `--s2` will\
    \ be\nignored."
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_window_size
  doc: "Window size to count reads and calculate read\ndensities. Set to 2000 is recommended\
    \ for sharp\nhistone marks like H3K4me3 or H3K27ac and 1000 for TFs\nor DNase-seq.\
    \ Default: 2000"
  type: long
  inputBinding:
    prefix: --window-size
- id: in_summit_dis
  doc: "Summit-to-summit distance cutoff for overlapping\ncommon peaks. Common peaks\
    \ with summit distance beyond\nthe cutoff are excluded in model fitting. Default:\n\
    `window size` / 4"
  type: long
  inputBinding:
    prefix: --summit-dis
- id: in_n_random
  doc: "Number of random simulations to test the enrichment of\npeak overlap between\
    \ the specified samples. Set to 0\nto disable the testing. Default: 10"
  type: long
  inputBinding:
    prefix: --n-random
- id: in_m_cut_off
  doc: "Absolute M-value (log2-ratio) cutoff to define the\nbiased (differential binding)\
    \ peaks. Default: 1.0"
  type: double
  inputBinding:
    prefix: --m-cutoff
- id: in_p_cut_off
  doc: "P-value cutoff to define the biased peaks. Default:\n0.01"
  type: double
  inputBinding:
    prefix: --p-cutoff
- id: in_output_dir
  doc: 'Output directory. Default: Current working directory'
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_write_all
  doc: "Write two extra output files containing the results of\nthe original (unmerged)\
    \ peaks."
  type: boolean
  inputBinding:
    prefix: --write-all
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Output directory. Default: Current working directory'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- manorm
