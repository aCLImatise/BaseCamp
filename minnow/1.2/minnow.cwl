class: CommandLineTool
id: minnow.cwl
inputs:
- id: a_levin_mode
  doc: The program would assume that the input matrix is obtained from Alevin
  type: boolean
  inputBinding:
    prefix: --alevin-mode
- id: splatter_mode
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --splatter-mode
- id: normal_mode
  doc: user provided matrix
  type: boolean
  inputBinding:
    prefix: --normal-mode
- id: test_uniq_ness
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --testUniqness
- id: reverse_uniq_ness
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --reverseUniqness
- id: use_weibull
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --useWeibull
- id: num_of_doublets
  doc: Number of doublets to be generated
  type: string
  inputBinding:
    prefix: --numOfDoublets
- id: mat_dir
  doc: directory with matrix file/ if this is a file instead of a dir
  type: string
  inputBinding:
    prefix: --matdir
- id: outdir
  doc: the simulated reads will be written here
  type: string
  inputBinding:
    prefix: --outdir
- id: num_molfile
  doc: Number of molecules generated from each cell
  type: string
  inputBinding:
    prefix: --numMolFile
- id: gen_code
  doc: gencode reference has | separator
  type: boolean
  inputBinding:
    prefix: --gencode
- id: ref_file
  doc: transcriptome reference file (assumed from fasta file)
  type: string
  inputBinding:
    prefix: --reffile
- id: g2t
  doc: tab separated list of Gene to Transcirpt mapping
  type: string
  inputBinding:
    prefix: --g2t
- id: r_spd
  doc: tab separated read start position distribution
  type: string
  inputBinding:
    prefix: --rspd
- id: bfh
  doc: BFH file
  type: string
  inputBinding:
    prefix: --bfh
- id: gene_prob
  doc: Gene level probability file (TSV)
  type: string
  inputBinding:
    prefix: --geneProb
- id: count_prob
  doc: global scale count probability file
  type: string
  inputBinding:
    prefix: --countProb
- id: velocity
  doc: In velocity mode we generate reads from exon-exon junction
  type: boolean
  inputBinding:
    prefix: --velocity
- id: binary
  doc: If the matrix file is written in binary
  type: boolean
  inputBinding:
    prefix: --binary
- id: dbg
  doc: Use the provided GFA file and BFH
  type: boolean
  inputBinding:
    prefix: --dbg
- id: no_dump
  doc: will use the model file made
  type: boolean
  inputBinding:
    prefix: --noDump
- id: gfa
  doc: gfa file for contigs
  type: string
  inputBinding:
    prefix: --gfa
- id: dup_counts
  doc: for making minnow read the dup counts TSV filtered_cb_frequency.txt in the
    same folder
  type: string
  inputBinding:
    prefix: --dupCounts
- id: use_whitelist
  doc: Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in
    the same folder
  type: boolean
  inputBinding:
    prefix: --useWhiteList
- id: generate_noisy_cells
  doc: Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in
    the same folder
  type: boolean
  inputBinding:
    prefix: --generateNoisyCells
- id: polya
  doc: Flag to sample with polyA sites this should accompany --polyAsite and --polyAfraction
  type: boolean
  inputBinding:
    prefix: --polyA
- id: polya_site
  doc: Fasta file with polyA sites
  type: string
  inputBinding:
    prefix: --polyAsite
- id: poly_a_fraction
  doc: 'File with polyA site fraction '
  type: string
  inputBinding:
    prefix: --polyAfraction
- id: sample_cells
  doc: sample this many cells from the set of all cells
  type: string
  inputBinding:
    prefix: --sampleCells
- id: intron_file
  doc: Intron bed file which contains the intron boundaries per transcript
  type: long
  inputBinding:
    prefix: --intronfile
- id: genome
  doc: genome FASTA file
  type: string
  inputBinding:
    prefix: --genome
- id: number_of_cells
  doc: Number of cells required for simulation (default = 10)
  type: string
  inputBinding:
    prefix: --numberOfCells
- id: number_of_transcripts
  doc: Number of transcripts for simulation (default = 100)
  type: string
  inputBinding:
    prefix: --numberOfTranscripts
- id: clusters
  doc: Gene cluster file (should be ported with --dbg)
  type: string
  inputBinding:
    prefix: --clusters
- id: pcr
  doc: Maximum cycles to repeat PCR (default = 5)
  type: string
  inputBinding:
    prefix: --PCR
- id: pcrmodel6
  doc: from Best, Katharine et al. (2015)
  type: string
  inputBinding:
    prefix: --PCRmodel6
- id: error_rate
  doc: error rate to be introduced while producing sequences
  type: string
  inputBinding:
    prefix: --error-rate
- id: num_threads
  doc: number of threads to parallelize the process
  type: string
  inputBinding:
    prefix: --num-threads
- id: eq_class_dir
  doc: directory containing relevent files produced by the python script
  type: string
  inputBinding:
    prefix: --eqClassDir
- id: outdir
  doc: the simulated models will be written
  type: string
  inputBinding:
    prefix: --outdir
- id: g2t
  doc: tab separated list of Gene to Transcirpt mapping
  type: string
  inputBinding:
    prefix: --g2t
- id: bfh
  doc: BFH file produced by alevin
  type: string
  inputBinding:
    prefix: --bfh
- id: cluster
  doc: Optional cluster file to model cluster based histogram
  type: string
  inputBinding:
    prefix: --cluster
outputs: []
cwlVersion: v1.1
baseCommand:
- minnow
