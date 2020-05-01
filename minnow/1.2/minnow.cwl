#!/usr/bin/env cwl-runner

baseCommand:
- minnow
class: CommandLineTool
cwlVersion: v1.0
id: minnow
inputs:
- doc: The program would assume that the input matrix is obtained from Alevin
  id: a_levin_mode
  inputBinding:
    prefix: --alevin-mode
  type: boolean
- doc: matrix file is obtained from running splatter
  id: splatter_mode
  inputBinding:
    prefix: --splatter-mode
  type: boolean
- doc: user provided matrix
  id: normal_mode
  inputBinding:
    prefix: --normal-mode
  type: boolean
- doc: matrix file is obtained from running splatter
  id: test_uniq_ness
  inputBinding:
    prefix: --testUniqness
  type: boolean
- doc: matrix file is obtained from running splatter
  id: reverse_uniq_ness
  inputBinding:
    prefix: --reverseUniqness
  type: boolean
- doc: matrix file is obtained from running splatter
  id: use_weibull
  inputBinding:
    prefix: --useWeibull
  type: boolean
- doc: Number of doublets to be generated
  id: num_of_doublets
  inputBinding:
    prefix: --numOfDoublets
  type: string
- doc: directory with matrix file/ if this is a file instead of a dir
  id: mat_dir
  inputBinding:
    prefix: --matdir
  type: string
- doc: the simulated reads will be written here
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: Number of molecules generated from each cell
  id: num_molfile
  inputBinding:
    prefix: --numMolFile
  type: string
- doc: gencode reference has | separator
  id: gen_code
  inputBinding:
    prefix: --gencode
  type: boolean
- doc: transcriptome reference file (assumed from fasta file)
  id: ref_file
  inputBinding:
    prefix: --reffile
  type: string
- doc: tab separated list of Gene to Transcirpt mapping
  id: g2t
  inputBinding:
    prefix: --g2t
  type: string
- doc: tab separated read start position distribution
  id: r_spd
  inputBinding:
    prefix: --rspd
  type: string
- doc: BFH file
  id: bfh
  inputBinding:
    prefix: --bfh
  type: string
- doc: Gene level probability file (TSV)
  id: gene_prob
  inputBinding:
    prefix: --geneProb
  type: string
- doc: global scale count probability file
  id: count_prob
  inputBinding:
    prefix: --countProb
  type: string
- doc: In velocity mode we generate reads from exon-exon junction
  id: velocity
  inputBinding:
    prefix: --velocity
  type: boolean
- doc: If the matrix file is written in binary
  id: binary
  inputBinding:
    prefix: --binary
  type: boolean
- doc: Use the provided GFA file and BFH
  id: dbg
  inputBinding:
    prefix: --dbg
  type: boolean
- doc: will use the model file made
  id: no_dump
  inputBinding:
    prefix: --noDump
  type: boolean
- doc: gfa file for contigs
  id: gfa
  inputBinding:
    prefix: --gfa
  type: string
- doc: for making minnow read the dup counts TSV filtered_cb_frequency.txt in the
    same folder
  id: dup_counts
  inputBinding:
    prefix: --dupCounts
  type: string
- doc: Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in
    the same folder
  id: use_whitelist
  inputBinding:
    prefix: --useWhiteList
  type: boolean
- doc: Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in
    the same folder
  id: generate_noisy_cells
  inputBinding:
    prefix: --generateNoisyCells
  type: boolean
- doc: Flag to sample with polyA sites this should accompany --polyAsite and --polyAfraction
  id: polya
  inputBinding:
    prefix: --polyA
  type: boolean
- doc: Fasta file with polyA sites
  id: polya_site
  inputBinding:
    prefix: --polyAsite
  type: string
- doc: 'File with polyA site fraction '
  id: poly_a_fraction
  inputBinding:
    prefix: --polyAfraction
  type: string
- doc: sample this many cells from the set of all cells
  id: sample_cells
  inputBinding:
    prefix: --sampleCells
  type: string
- doc: Intron bed file which contains the intron boundaries per transcript
  id: intron_file
  inputBinding:
    prefix: --intronfile
  type: long
- doc: genome FASTA file
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: Number of cells required for simulation (default = 10)
  id: number_of_cells
  inputBinding:
    prefix: --numberOfCells
  type: string
- doc: Number of transcripts for simulation (default = 100)
  id: number_of_transcripts
  inputBinding:
    prefix: --numberOfTranscripts
  type: string
- doc: Gene cluster file (should be ported with --dbg)
  id: clusters
  inputBinding:
    prefix: --clusters
  type: string
- doc: Maximum cycles to repeat PCR (default = 5)
  id: pcr
  inputBinding:
    prefix: --PCR
  type: string
- doc: from Best, Katharine et al. (2015)
  id: pcrmodel6
  inputBinding:
    prefix: --PCRmodel6
  type: string
- doc: error rate to be introduced while producing sequences
  id: error_rate
  inputBinding:
    prefix: --error-rate
  type: string
- doc: number of threads to parallelize the process
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: directory containing relevent files produced by the python script
  id: eq_class_dir
  inputBinding:
    prefix: --eqClassDir
  type: string
- doc: the simulated models will be written
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: tab separated list of Gene to Transcirpt mapping
  id: g2t
  inputBinding:
    prefix: --g2t
  type: string
- doc: BFH file produced by alevin
  id: bfh
  inputBinding:
    prefix: --bfh
  type: string
- doc: Optional cluster file to model cluster based histogram
  id: cluster
  inputBinding:
    prefix: --cluster
  type: string
