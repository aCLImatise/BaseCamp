class: CommandLineTool
id: hint_cnv.cwl
inputs:
- id: matrix_file
  doc: The matrix compressed file contains single or multiple resolutions Hi-C contact
    matrix files (multi-cool, or hic file), resolution should be set via parameter
    -r; or a sparse | dense format matrix file whole genome widely (not suggest when
    using a high resolution)
  type: string
  inputBinding:
    prefix: --matrixfile
- id: ref_dir
  doc: the reference directory that downloaded from dropbox dropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A
    ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)
  type: string
  inputBinding:
    prefix: --refdir
- id: map_track
  doc: '{24mer,36mer,50mer} Choose which ENCODE mappability track should be used for
    regression. See more details http://genome.ucsc.edu/cgi- bin/hgTrackUi?db=hg18&g=wgEncodeMapability.
    DEFAULT: 50mer'
  type: boolean
  inputBinding:
    prefix: --maptrack
- id: bic_seq
  doc: /path/to/bicseqDir/
  type: string
  inputBinding:
    prefix: --bicseq
- id: do_iter
  doc: If this switch is on, HiNT will do the iterative regression model by removing
    copy numer variated regions, DEFAULT=False
  type: boolean
  inputBinding:
    prefix: --doiter
- id: format
  doc: 'Format for the output contact matrix, DEFAULT: cooler'
  type: string
  inputBinding:
    prefix: --format
- id: enzyme
  doc: enzyme used for the Hi-C experiments, will be used to calculate enzyme sites
  type: string
  inputBinding:
    prefix: --enzyme
- id: resolution
  doc: 'Resolution for the Hi-C contact matrix used for the CNV detection, unit: kb,
    DEFAULT: 50kb'
  type: string
  inputBinding:
    prefix: --resolution
- id: genome
  doc: 'Specify your species, choose form hg38, hg19, and mm10. DEFAULT: hg19'
  type: string
  inputBinding:
    prefix: --genome
- id: outdir
  doc: Path to the output directory, where you want to store all the output files,
    if not set, the current directory will be used
  type: string
  inputBinding:
    prefix: --outdir
- id: name
  doc: Prefix for the result files. If not set, 'NA' will be used instead
  type: string
  inputBinding:
    prefix: --name
- id: threads
  doc: 'Number of threads for running HiNT-cnv, DEFAULT: 16'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hint
- cnv
