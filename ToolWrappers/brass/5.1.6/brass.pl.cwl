class: CommandLineTool
id: brass.pl.cwl
inputs:
- id: in_outdir
  doc: Folder to output result to.
  type: Directory?
  inputBinding:
    prefix: -outdir
- id: in_tumour
  doc: Tumour BAM file
  type: boolean?
  inputBinding:
    prefix: -tumour
- id: in_normal
  doc: Normal BAM file
  type: boolean?
  inputBinding:
    prefix: -normal
- id: in_depth
  doc: Regions of excessive sequencing depth to be ignored
  type: boolean?
  inputBinding:
    prefix: -depth
- id: in_genome
  doc: Genome fasta file
  type: boolean?
  inputBinding:
    prefix: -genome
- id: in_species
  doc: Species name
  type: boolean?
  inputBinding:
    prefix: -species
- id: in_assembly
  doc: Assembly name
  type: boolean?
  inputBinding:
    prefix: -assembly
- id: in_protocol
  doc: Sequencing protocol (WGS|WXS|RNA)
  type: boolean?
  inputBinding:
    prefix: -protocol
- id: in_g_cache
  doc: Genome cache file.
  type: boolean?
  inputBinding:
    prefix: -g_cache
- id: in_viral
  doc: Virus sequences from NCBI
  type: boolean?
  inputBinding:
    prefix: -viral
- id: in_microbe
  doc: Microbe sequences file prefix from NCBI, please exclude '.N.fa.2bit'
  type: boolean?
  inputBinding:
    prefix: -microbe
- id: in_gc_bins
  doc: 5 column bed coord file, col 4 number of non-N bases, col 5 GC fraction.
  type: boolean?
  inputBinding:
    prefix: -gcbins
- id: in_cent_tel
  doc: "TSV file of usable regions of the chromosome\nExample in perl/share/Rdefault/"
  type: boolean?
  inputBinding:
    prefix: -centtel
- id: in_min_cn
  doc: Minimum CN change for copynumber_flag [0.3].
  type: boolean?
  inputBinding:
    prefix: -mincn
- id: in_repeats
  doc: Repeat file, see 'make-repeat-file' (legacy)
  type: boolean?
  inputBinding:
    prefix: -repeats
- id: in_samp_stat
  doc: "ASCAT sample statistics file or file containing\nNormalContamination 0.XXXXX\
    \ [0.25]\nPloidy X.XXX [2.0]"
  type: boolean?
  inputBinding:
    prefix: -sampstat
- id: in_platform
  doc: Sequencing platform (when not defined in BAM header)
  type: boolean?
  inputBinding:
    prefix: -platform
- id: in_tum_name
  doc: Tumour sample name (when not defined in BAM header)
  type: boolean?
  inputBinding:
    prefix: -tum_name
- id: in_norm_name
  doc: Normal sample name (when not defined in BAM header)
  type: boolean?
  inputBinding:
    prefix: -norm_name
- id: in_filter
  doc: bgzip tabix-ed normal panel groups file
  type: boolean?
  inputBinding:
    prefix: -filter
- id: in_no_clean
  doc: Don't tidyup the processing areas.
  type: boolean?
  inputBinding:
    prefix: -noclean
- id: in_cpus
  doc: "Number of cores to use. [1]\n- recommend max 2 during 'input' process."
  type: boolean?
  inputBinding:
    prefix: -cpus
- id: in_process
  doc: Only process this step then exit, optionally set -index
  type: boolean?
  inputBinding:
    prefix: -process
- id: in_index
  doc: Optionally restrict '-p' to single job
  type: boolean?
  inputBinding:
    prefix: -index
- id: in_limit
  doc: Define with -p and -i, see below
  type: boolean?
  inputBinding:
    prefix: -limit
- id: in_man
  doc: Full documentation.
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_version
  doc: Version
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_optional
  doc: -mingroup  -j   Minimum reads to call group [2].
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Folder to output result to.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- brass.pl
