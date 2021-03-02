class: CommandLineTool
id: miRge3.0.cwl
inputs:
- id: in_samples
  doc: list of one or more samples separated by comma or a file with list of samples
    separated by new line (accepts *.fastq, *.fastq.gz)
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_mir_db
  doc: 'the reference database of miRNA. Options: miRBase and miRGeneDB (Default:
    miRBase)'
  type: boolean?
  inputBinding:
    prefix: --mir-DB
- id: in_libraries_path
  doc: the path to miRge libraries
  type: boolean?
  inputBinding:
    prefix: --libraries-path
- id: in_organism_name
  doc: the organism name can be human, mouse, fruitfly, nematode, rat or zebrafish
  type: boolean?
  inputBinding:
    prefix: --organism-name
- id: in_cr_threshold
  doc: 'the threshold of the proportion of canonical reads for the miRNAs to retain.
    Range for ex (0 - 0.5), (Default: 0.1)'
  type: boolean?
  inputBinding:
    prefix: --crThreshold
- id: in_phred_six_four
  doc: 'phred64 format (Default: 33)'
  type: boolean?
  inputBinding:
    prefix: --phred64
- id: in_spike_in
  doc: "switch to annotate spike-ins if spike-in bowtie index files are located at\
    \ the path of bowtie's index files (Default: off)"
  type: boolean?
  inputBinding:
    prefix: --spikeIn
- id: in_isoform_entropy
  doc: 'switch to calculate isomir entropy (default: off)'
  type: boolean?
  inputBinding:
    prefix: --isoform-entropy
- id: in_threads
  doc: 'the number of processors to use for trimming, qc, and alignment (Default:
    1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_atoi
  doc: 'switch to calculate A to I editing (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --AtoI
- id: in_tcf_out
  doc: 'switch to write trimmed and collapsed fasta file (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --tcf-out
- id: in_gff_out
  doc: 'switch to output isomiR results in gff format (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --gff-out
- id: in_bam_out
  doc: 'switch to output results in bam format (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --bam-out
- id: in_trna_frag
  doc: 'switch to analyze tRNA fragment and halves (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --tRNA-frag
- id: in_outdir
  doc: 'the directory of the outputs (Default: current directory)'
  type: boolean?
  inputBinding:
    prefix: --outDir
- id: in_diff_ex
  doc: 'perform differential expression with DESeq2 (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --diffex
- id: in_metadata
  doc: "the path to metadata file (Default: off, require '.csv' file format if -dex\
    \ is opted)"
  type: boolean?
  inputBinding:
    prefix: --metadata
- id: in_quiet
  doc: 'enable quiet/silent mode, only show warnings and errors (Default: off)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_adapter
  doc: Sequence of a 3' adapter. The adapter and subsequent bases are trimmed
  type: boolean?
  inputBinding:
    prefix: --adapter
- id: in_front
  doc: Sequence of a 5' adapter. The adapter and any preceding bases are trimmed
  type: boolean?
  inputBinding:
    prefix: --front
- id: in_cut
  doc: Remove bases from each read. If LENGTH is positive, remove bases from the beginning.
    If LENGTH is negative, remove bases from the end
  type: boolean?
  inputBinding:
    prefix: --cut
- id: in_next_seq_trim
  doc: NextSeq-specific quality trimming (each read). Trims also dark cycles appearing
    as high-quality G bases
  type: boolean?
  inputBinding:
    prefix: --nextseq-trim
- id: in_quality_cut_off
  doc: "Trim low-quality bases from 5' and/or 3' ends of each read before adapter\
    \ removal. If one value is given, only the 3' end is trimmed\nIf two comma-separated\
    \ cutoffs are given, the 5' end is trimmed with the first cutoff, the 3' end with\
    \ the second"
  type: boolean?
  inputBinding:
    prefix: --quality-cutoff
- id: in_length
  doc: "Shorten reads to LENGTH. Positive values remove bases at the end while negative\
    \ ones remove bases at the beginning. This and the following\nmodifications are\
    \ applied after adapter trimming"
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_trim_n
  doc: Trim N's on ends of reads
  type: boolean?
  inputBinding:
    prefix: --trim-n
- id: in_minimum_length
  doc: 'Discard reads shorter than LEN. (Default: 16)'
  type: boolean?
  inputBinding:
    prefix: --minimum-length
- id: in_uniq_mol_ids
  doc: 'Removes PCR duplicates and trim UMI of length by specifying two comma-separated
    cutoffs as 5’ cutoff,3’ bp from both ends of the read. eg: 4,4 or 0,4'
  type: boolean?
  inputBinding:
    prefix: --uniq-mol-ids
- id: in_u_mid_ed_up
  doc: 'Specifies argument to removes PCR duplicates (Default: False); if TRUE it
    will remove UMI and remove PCR duplicates otherwise it only remove UMI and keep
    the raw counts'
  type: boolean?
  inputBinding:
    prefix: --umiDedup
- id: in_qiagen_umi
  doc: 'Removes PCR duplicates of reads obtained from Qiagen platform (Default: Illumina;
    "-umi x,y " Required)'
  type: boolean?
  inputBinding:
    prefix: --qiagenumi
- id: in_novel_mirna
  doc: include prediction of novel miRNAs
  type: boolean?
  inputBinding:
    prefix: --novel-miRNA
- id: in_minlength
  doc: 'the minimum length of the retained reads for novel miRNA detection (default:
    16)'
  type: boolean?
  inputBinding:
    prefix: --minLength
- id: in_maxlength
  doc: 'the maximum length of the retained reads for novel miRNA detection (default:
    25)'
  type: boolean?
  inputBinding:
    prefix: --maxLength
- id: in_min_read_counts
  doc: 'the minimum read counts supporting novel miRNA detection (default: 2)'
  type: boolean?
  inputBinding:
    prefix: --minReadCounts
- id: in_max_mapping_loci
  doc: 'the maximum number of mapping loci for the retained reads for novel miRNA
    detection (default: 3)'
  type: boolean?
  inputBinding:
    prefix: --maxMappingLoci
- id: in_seed_length
  doc: 'the seed length when invoking Bowtie for novel miRNA detection (default: 25)'
  type: boolean?
  inputBinding:
    prefix: --seedLength
- id: in_overlap_len_cut_off
  doc: "the length of overlapped seqence when joining reads into longer sequences\
    \ based on the coordinate\non the genome for novel miRNA detection (default: 14)"
  type: boolean?
  inputBinding:
    prefix: --overlapLenCutoff
- id: in_cluster_length
  doc: 'the maximum length of the clustered sequences for novel miRNA detection (default:
    30)'
  type: boolean?
  inputBinding:
    prefix: --clusterLength
- id: in_bowtie_path
  doc: the path to system's directory containing bowtie binary
  type: boolean?
  inputBinding:
    prefix: --bowtie-path
- id: in_sam_tools_path
  doc: the path to system's directory containing samtools binary
  type: boolean?
  inputBinding:
    prefix: --samtools-path
- id: in_rna_fold_path
  doc: the path to system's directory containing RNAfold binary
  type: boolean?
  inputBinding:
    prefix: --RNAfold-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirge3:0.0.7--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- miRge3.0
