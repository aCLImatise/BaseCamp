class: CommandLineTool
id: rnaQUAST.py.cwl
inputs:
- id: single_reads
  doc: File with unpaired reads [FASTQ or gzip-compressed]
  type: string
  inputBinding:
    prefix: --single_reads
- id: gmap_index
  doc: Folder containing GMAP index for the reference genome
  type: string
  inputBinding:
    prefix: --gmap_index
- id: output_dir
  doc: 'Directory to store all results [default: rnaQUAST_results/results_<datetime>]'
  type: string
  inputBinding:
    prefix: --output_dir
- id: test
  doc: Run rnaQUAST on the test data from the test_data folder, output directory is
    rnaOUAST_test_output
  type: boolean
  inputBinding:
    prefix: --test
- id: debug
  doc: Report detailed information, typically used only for detecting problems.
  type: boolean
  inputBinding:
    prefix: --debug
- id: threads
  doc: 'Maximum number of threads, default: min(number of CPUs / 2, 16)'
  type: string
  inputBinding:
    prefix: --threads
- id: labels
  doc: Name(s) of assemblies that will be used in the reports
  type: string[]
  inputBinding:
    prefix: --labels
- id: strand_specific
  doc: Set if transcripts were assembled using strand- specific RNA-Seq data
  type: boolean
  inputBinding:
    prefix: --strand_specific
- id: min_alignment
  doc: 'Minimal alignment length, default: 50'
  type: long
  inputBinding:
    prefix: --min_alignment
- id: no_plots
  doc: Do not draw plots (to speed up computation)
  type: boolean
  inputBinding:
    prefix: --no_plots
- id: blat
  doc: Run with BLAT alignment tool (http://hgwdev.cse.ucsc.edu/~kent/exe/) instead
    of GMAP
  type: boolean
  inputBinding:
    prefix: --blat
- id: gene_mark
  doc: Run with GeneMarkS-T tool (http://topaz.gatech.edu/GeneMark/)
  type: boolean
  inputBinding:
    prefix: --gene_mark
- id: meta
  doc: Run QUALITY ASSESSMENT FOR METATRANSCRIPTOME ASSEMBLIES
  type: boolean
  inputBinding:
    prefix: --meta
- id: lower_threshold
  doc: 'Lower threshold for x-assembled/covered/matched metrics, default: 0.5'
  type: string
  inputBinding:
    prefix: --lower_threshold
- id: upper_threshold
  doc: 'Upper threshold for x-assembled/covered/matched metrics, default: 0.95'
  type: string
  inputBinding:
    prefix: --upper_threshold
- id: prokaryote
  doc: Use this option if the genome is prokaryotic
  type: boolean
  inputBinding:
    prefix: --prokaryote
- id: disable_infer_genes
  doc: Use this option if your GTF file already contains genes records
  type: boolean
  inputBinding:
    prefix: --disable_infer_genes
- id: disable_infer_transcripts
  doc: Use this option if your GTF already contains transcripts records
  type: boolean
  inputBinding:
    prefix: --disable_infer_transcripts
- id: busco_lineage
  doc: Run with BUSCO tool (http://busco.ezlab.org/). Path to the BUSCO lineage data
    to be used (Eukaryota, Metazoa, Arthropoda, Vertebrata or Fungi)
  type: string
  inputBinding:
    prefix: --busco_lineage
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaQUAST.py
