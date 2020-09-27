class: CommandLineTool
id: minnow.cwl
inputs:
- id: in_a_levin_mode
  doc: The program would assume that the input matrix is obtained from Alevin
  type: boolean
  inputBinding:
    prefix: --alevin-mode
- id: in_splatter_mode
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --splatter-mode
- id: in_normal_mode
  doc: user provided matrix
  type: boolean
  inputBinding:
    prefix: --normal-mode
- id: in_test_uniq_ness
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --testUniqness
- id: in_reverse_uniq_ness
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --reverseUniqness
- id: in_use_weibull
  doc: matrix file is obtained from running splatter
  type: boolean
  inputBinding:
    prefix: --useWeibull
- id: in_num_of_doublets
  doc: Number of doublets to be generated
  type: long
  inputBinding:
    prefix: --numOfDoublets
- id: in_mat_dir
  doc: directory with matrix file/ if this is a file instead of a dir
  type: File
  inputBinding:
    prefix: --matdir
- id: in_outdir
  doc: the simulated reads will be written here
  type: File
  inputBinding:
    prefix: --outdir
- id: in_num_molfile
  doc: Number of molecules generated from each cell
  type: long
  inputBinding:
    prefix: --numMolFile
- id: in_gen_code
  doc: gencode reference has | separator
  type: boolean
  inputBinding:
    prefix: --gencode
- id: in_ref_file
  doc: transcriptome reference file (assumed from fasta file)
  type: File
  inputBinding:
    prefix: --reffile
- id: in_g_two_t
  doc: tab separated list of Gene to Transcirpt mapping
  type: long
  inputBinding:
    prefix: --g2t
- id: in_r_spd
  doc: tab separated read start position distribution
  type: string
  inputBinding:
    prefix: --rspd
- id: in_bfh
  doc: BFH file
  type: File
  inputBinding:
    prefix: --bfh
- id: in_gene_prob
  doc: Gene level probability file (TSV)
  type: File
  inputBinding:
    prefix: --geneProb
- id: in_count_prob
  doc: global scale count probability file
  type: File
  inputBinding:
    prefix: --countProb
- id: in_velocity
  doc: In velocity mode we generate reads from exon-exon junction
  type: boolean
  inputBinding:
    prefix: --velocity
- id: in_binary
  doc: If the matrix file is written in binary
  type: boolean
  inputBinding:
    prefix: --binary
- id: in_dbg
  doc: Use the provided GFA file and BFH
  type: boolean
  inputBinding:
    prefix: --dbg
- id: in_no_dump
  doc: will use the model file made
  type: boolean
  inputBinding:
    prefix: --noDump
- id: in_gfa
  doc: gfa file for contigs
  type: File
  inputBinding:
    prefix: --gfa
- id: in_dup_counts
  doc: for making minnow read the dup counts TSV filtered_cb_frequency.txt in the
    same folder
  type: Directory
  inputBinding:
    prefix: --dupCounts
- id: in_use_whitelist
  doc: Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in
    the same folder
  type: boolean
  inputBinding:
    prefix: --useWhiteList
- id: in_generate_noisy_cells
  doc: Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in
    the same folder
  type: boolean
  inputBinding:
    prefix: --generateNoisyCells
- id: in_polya
  doc: Flag to sample with polyA sites this should accompany --polyAsite and --polyAfraction
  type: boolean
  inputBinding:
    prefix: --polyA
- id: in_polya_site
  doc: Fasta file with polyA sites
  type: File
  inputBinding:
    prefix: --polyAsite
- id: in_poly_a_fraction
  doc: File with polyA site fraction
  type: File
  inputBinding:
    prefix: --polyAfraction
- id: in_sample_cells
  doc: sample this many cells from the set of all cells
  type: string
  inputBinding:
    prefix: --sampleCells
- id: in_intron_file
  doc: Intron bed file which contains the intron boundaries per transcript
  type: File
  inputBinding:
    prefix: --intronfile
- id: in_genome
  doc: genome FASTA file
  type: File
  inputBinding:
    prefix: --genome
- id: in_number_of_cells
  doc: Number of cells required for simulation (default = 10)
  type: long
  inputBinding:
    prefix: --numberOfCells
- id: in_number_of_transcripts
  doc: Number of transcripts for simulation (default = 100)
  type: long
  inputBinding:
    prefix: --numberOfTranscripts
- id: in_clusters
  doc: Gene cluster file (should be ported with --dbg)
  type: long
  inputBinding:
    prefix: --clusters
- id: in_pcr
  doc: Maximum cycles to repeat PCR (default = 5)
  type: long
  inputBinding:
    prefix: --PCR
- id: in_pcr_model_six
  doc: from Best, Katharine et al. (2015)
  type: long
  inputBinding:
    prefix: --PCRmodel6
- id: in_error_rate
  doc: error rate to be introduced while producing sequences
  type: string
  inputBinding:
    prefix: --error-rate
- id: in_num_threads
  doc: number of threads to parallelize the process
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_eq_class_dir
  doc: directory containing relevent files produced by the python script
  type: Directory
  inputBinding:
    prefix: --eqClassDir
- id: in_cluster
  doc: Optional cluster file to model cluster based histogram
  type: File
  inputBinding:
    prefix: --cluster
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- minnow
