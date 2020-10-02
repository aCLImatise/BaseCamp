class: CommandLineTool
id: FaQCs.cwl
inputs:
- id: in_file_unpaired_reads
  doc: <File> Unpaired reads
  type: boolean
  inputBinding:
    prefix: -u
- id: in_file_first_paired
  doc: <File> First paired read file
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_file_second_paired
  doc: <File> Second paired read file
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_mode
  doc: "\"HARD\" or \"BWA\" or \"BWA_plus\" (default BWA_plus)\nBWA trim is NOT A\
    \ HARD cutoff! (see bwa's bwa_trim_read() function in bwaseqio.c)"
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_int_targets_quality
  doc: '<INT> Targets # as quality level (default 5) for trimming'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_five_end
  doc: '<INT> Cut # bp from 5 end before quality trimming/filtering'
  type: boolean
  inputBinding:
    prefix: --5end
- id: in_three_end
  doc: '<INT> Cut # bp from 3 end before quality trimming/filtering'
  type: boolean
  inputBinding:
    prefix: --3end
- id: in_adapter
  doc: '<bool> Trim reads with illumina adapter/primers (default: no)'
  type: boolean
  inputBinding:
    prefix: --adapter
- id: in_rate
  doc: "<FLOAT> Mismatch ratio of adapters' length (default: 0.2, allow 20% mismatches)"
  type: boolean
  inputBinding:
    prefix: --rate
- id: in_polya
  doc: <bool>  Trim poly A ( > 15 )
  type: boolean
  inputBinding:
    prefix: --polyA
- id: in_artifact_file
  doc: <File> additional artifact (adapters/primers/contaminations) reference file
    in fasta format
  type: boolean
  inputBinding:
    prefix: --artifactFile
- id: in_min_l
  doc: <INT> Trimmed read should have to be at least this minimum length (default:50)
  type: boolean
  inputBinding:
    prefix: --min_L
- id: in_avg_q
  doc: <NUM> Average quality cutoff (default:0, no filtering)
  type: boolean
  inputBinding:
    prefix: --avg_q
- id: in_int_trimmed_read_greater
  doc: "<INT> Trimmed read has greater than or equal to this number of continuous\
    \ base \"N\" will be discarded.\n(default: 2, \"NN\")"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_lc
  doc: '<FLOAT> Low complexity filter ratio, Maximum fraction of mono-/di-nucleotide
    sequence  (default: 0.85)'
  type: boolean
  inputBinding:
    prefix: --lc
- id: in_phi_x
  doc: <bool> Filter phiX reads (slow)
  type: boolean
  inputBinding:
    prefix: --phiX
- id: in_ascii
  doc: "Encoding type: 33 or 64 or autoCheck (default)\nType of ASCII encoding: 33\
    \ (standard) or 64 (illumina 1.3+)"
  type: boolean
  inputBinding:
    prefix: --ascii
- id: in_out_ascii
  doc: 'Output encoding. (default: 33)'
  type: boolean
  inputBinding:
    prefix: --out_ascii
- id: in_prefix
  doc: '<TEXT> Output file prefix. (default: QC)'
  type: File
  inputBinding:
    prefix: --prefix
- id: in_stats
  doc: '<File> Statistical numbers output file (default: prefix.stats.txt)'
  type: File
  inputBinding:
    prefix: --stats
- id: in_path_output_directory
  doc: <PATH> Output directory.
  type: File
  inputBinding:
    prefix: -d
- id: in_int_cpus_run
  doc: '<INT > # of CPUs to run the script (default:2 )'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_split_size
  doc: '<INT> Split the input file into several sub files by sequence number (default:
    1000000)'
  type: boolean
  inputBinding:
    prefix: --split_size
- id: in_qc_only
  doc: <bool> no Filters, no Trimming, report numbers.
  type: boolean
  inputBinding:
    prefix: --qc_only
- id: in_km_er_rarefaction
  doc: "<bool>\nTurn on the kmer calculation. Turn on will slow down ~10 times. (default:Calculation\
    \ is off.)\n(meaningless if -subset is too small)"
  type: boolean
  inputBinding:
    prefix: --kmer_rarefaction
- id: in_int_kmer_rarefaction
  doc: <INT>     kmer for rarefaction curve (range:[2,31], default 31)
  type: boolean
  inputBinding:
    prefix: -m
- id: in_subset
  doc: "<INT>   Use this nubmer x split_size for qc_only and kmer_rarefaction\n(default:\
    \ 10,  10x1000000 SE reads, 20x1000000 PE reads)"
  type: boolean
  inputBinding:
    prefix: --subset
- id: in_discard
  doc: '<bool> Output discarded reads to prefix.discard.fastq (default: 0, not output)'
  type: boolean
  inputBinding:
    prefix: --discard
- id: in_substitute
  doc: '<bool> Replace "N" in the trimmed reads with random base A,T,C ,or G (default:
    0, off)'
  type: boolean
  inputBinding:
    prefix: --substitute
- id: in_trim_only
  doc: <bool> No quality report. Output trimmed reads only.
  type: boolean
  inputBinding:
    prefix: --trim_only
- id: in_replace_to_n_q
  doc: <INT> Replace base G to N when below this quality score (default:0, off)
  type: boolean
  inputBinding:
    prefix: --replace_to_N_q
- id: in_five_trim_off
  doc: <bool> Turn off trimming from 5'end.
  type: boolean
  inputBinding:
    prefix: --5trim_off
- id: in_debug
  doc: <bool> Keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: '<TEXT> Output file prefix. (default: QC)'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_stats
  doc: '<File> Statistical numbers output file (default: prefix.stats.txt)'
  type: File
  outputBinding:
    glob: $(inputs.in_stats)
- id: out_path_output_directory
  doc: <PATH> Output directory.
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_directory)
cwlVersion: v1.1
baseCommand:
- FaQCs
