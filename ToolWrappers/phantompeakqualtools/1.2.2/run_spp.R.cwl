class: CommandLineTool
id: run_spp.R.cwl
inputs:
- id: in_c
  doc: ', full path and name (or URL) of tagAlign/BAM file (can be gzipped) (FILE
    EXTENSION MUST BE tagAlign.gz, tagAlign, bam or bam.gz)'
  type: File
  inputBinding:
    prefix: -c
- id: in_i
  doc: ', full path and name (or URL) of tagAlign/BAM file (can be gzipped) (FILE
    EXTENSION MUST BE tagAlign.gz, tagAlign, bam or bam.gz)'
  type: File
  inputBinding:
    prefix: -i
- id: in_stepmax_strand_shifts
  doc: :<step>:<max> , strand shifts at which cross-correlation is evaluated, default=-500:5:1500
  type: long
  inputBinding:
    prefix: -s
- id: in_speak
  doc: ', user-defined cross-correlation peak strandshift'
  type: string
  inputBinding:
    prefix: -speak
- id: in_max_strand_shifts
  doc: :<max>, strand shifts to exclude (This is mainly to avoid region around phantom
    peak) default=10:(readlen+10)
  type: long
  inputBinding:
    prefix: -x
- id: in_number_parallel_processing
  doc: ', number of parallel processing nodes, default=0'
  type: long
  inputBinding:
    prefix: -p
- id: in_fdr
  doc: ', false discovery rate threshold for peak calling'
  type: string
  inputBinding:
    prefix: -fdr
- id: in_n_peak
  doc: ', threshold on number of peaks to call'
  type: long
  inputBinding:
    prefix: -npeak
- id: in_tmpdir
  doc: ', Temporary directory (if not specified R function tempdir() is used)'
  type: Directory
  inputBinding:
    prefix: -tmpdir
- id: in_filt_chr
  doc: ', Pattern to use to remove tags that map to specific chromosomes e.g. _ will
    remove all tags that map to chromosomes with _ in their name'
  type: string
  inputBinding:
    prefix: -filtchr
- id: in_o_dir
  doc: name of output directory (If not set same as ChIP file directory is used)
  type: Directory
  inputBinding:
    prefix: -odir
- id: in_s_avn
  doc: OR -savn NarrowPeak file name (fixed width peaks)
  type: File
  inputBinding:
    prefix: -savn
- id: in_s_avr
  doc: OR -savr RegionPeak file name (variable width peaks with regions of enrichment)
  type: File
  inputBinding:
    prefix: -savr
- id: in_sav_d
  doc: OR -savd, save Rdata file
  type: File
  inputBinding:
    prefix: -savd
- id: in_s_avp
  doc: OR -savp, save cross-correlation plot
  type: File
  inputBinding:
    prefix: -savp
- id: in_out
  doc: ", append peakshift/phantomPeak results to a file\nformat:Filename<tab>numReads<tab>estFragLen<tab>corr_estFragLen<tab>PhantomPeak<tab>corr_phantomPeak<tab>argmin_corr<tab>min_corr<tab>Normalized\
    \ SCC (NSC)<tab>Relative SCC (RSC)<tab>QualityTag)"
  type: File
  inputBinding:
    prefix: -out
- id: in_rf
  doc: ', if plot or rdata or narrowPeak file exists replace it. If not used then
    the run is aborted if the plot or Rdata or narrowPeak file exists'
  type: boolean
  inputBinding:
    prefix: -rf
- id: in_clean
  doc: ', if present will remove the original chip and control files after reading
    them in. CAUTION: Use only if the script calling run_spp.R is creating temporary
    files'
  type: boolean
  inputBinding:
    prefix: -clean
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o_dir
  doc: name of output directory (If not set same as ChIP file directory is used)
  type: Directory
  outputBinding:
    glob: $(inputs.in_o_dir)
cwlVersion: v1.1
baseCommand:
- run_spp.R
