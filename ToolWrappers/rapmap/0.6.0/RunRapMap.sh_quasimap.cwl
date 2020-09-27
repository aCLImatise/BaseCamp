class: CommandLineTool
id: RunRapMap.sh_quasimap.cwl
inputs:
- id: in__index_pathrequired
  doc: ",  --index <path>\n(required)  The location of the quasiindex"
  type: File
  inputBinding:
    prefix: -i
- id: in__leftmates_paththe
  doc: ",  --leftMates <path>\nThe location of the left paired-end reads"
  type: File
  inputBinding:
    prefix: '-1'
- id: in__rightmates_reads
  doc: ",  --rightMates <path>\nThe location of the right paired-end reads"
  type: File
  inputBinding:
    prefix: '-2'
- id: in__unmatedreads_paththe
  doc: ",  --unmatedReads <path>\nThe location of single-end reads"
  type: File
  inputBinding:
    prefix: -r
- id: in__output_paththe
  doc: ",  --output <path>\nThe output file (default: stdout)"
  type: File
  inputBinding:
    prefix: -o
- id: in__compressedcompress_output
  doc: ",  --compressed\nCompress the output SAM file using zlib"
  type: File
  inputBinding:
    prefix: -x
- id: in__numthreads_positive
  doc: ",  --numThreads <positive integer>\nNumber of threads to use"
  type: long
  inputBinding:
    prefix: -t
- id: in__selalnperform_selective
  doc: ",  --selAln\nPerform selective alignment to validate mapping hits"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_mimic_bt_two
  doc: "[only with selAln]: mimic Bowtie2-like default params but with\n--no-mixed\
    \ and --no-discordant"
  type: boolean
  inputBinding:
    prefix: --mimicBT2
- id: in_mimic_strict_bt_two
  doc: "[only with selAln]: mimic strict Bowtie2-like default params (e.g.\nlike those\
    \ recommended for running RSEM)"
  type: boolean
  inputBinding:
    prefix: --mimicStrictBT2
- id: in_min_score_frac
  doc: "<ratio in (0,1]>\n[only with selAln]: minimum score fraction for a valid alignment"
  type: boolean
  inputBinding:
    prefix: --minScoreFrac
- id: in_max_mmp_extension
  doc: "1>\n[only with selAln or with chaining]: maximum allowable MMP extension"
  type: long
  inputBinding:
    prefix: --maxMMPExtension
- id: in_consensus_slack
  doc: "<ratio in (0,1]>\n[only with selAln]: consensus slack to apply during mapping"
  type: boolean
  inputBinding:
    prefix: --consensusSlack
- id: in_ma
  doc: '[only with selAln]: match score'
  type: long
  inputBinding:
    prefix: --ma
- id: in_mm
  doc: '[only with selAln]: mismatch penalty'
  type: long
  inputBinding:
    prefix: --mm
- id: in_go
  doc: '[only with selAln]: gap open penalty'
  type: long
  inputBinding:
    prefix: --go
- id: in_ge
  doc: '[only with selAln]: gap extend penalty'
  type: long
  inputBinding:
    prefix: --ge
- id: in_dp_bandwidth
  doc: '[only with selAln]: bandwidth to use in extension alignment'
  type: long
  inputBinding:
    prefix: --dpBandwidth
- id: in_no_orphans
  doc: discard orphaned mappings
  type: boolean
  inputBinding:
    prefix: --noOrphans
- id: in_no_dovetail
  doc: discard dovetailing mappings
  type: boolean
  inputBinding:
    prefix: --noDovetail
- id: in_recover_orphans
  doc: perform orphan recovery to try and recover endpoints of orphaned reads
  type: boolean
  inputBinding:
    prefix: --recoverOrphans
- id: in_hard_filter
  doc: "[only with selAln]: apply hard filter to only return best alignments\nfor\
    \ each read"
  type: boolean
  inputBinding:
    prefix: --hardFilter
- id: in__writeunmappedinclude_unmapped
  doc: ",  --writeUnmapped\ninclude unmapped reads in the output SAM records"
  type: boolean
  inputBinding:
    prefix: -u
- id: in__quietdisable_console
  doc: ",  --quiet\nDisable all console output apart from warnings and errors"
  type: boolean
  inputBinding:
    prefix: -q
- id: in__chainingscore_hits
  doc: ",  --chaining\nScore the hits to find the best chain"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__fuzzyintersectionfind_pairedend
  doc: ",  --fuzzyIntersection\nFind paired-end mapping locations using fuzzy intersection"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_no_strict_check
  doc: "Don't perform extra checks to try and assure that only equally \"best\"\n\
    mappings for a read are reported"
  type: boolean
  inputBinding:
    prefix: --noStrictCheck
- id: in_no_sensitive
  doc: Perform a less sensitive quasi-mapping by enabling NIP skipping
  type: boolean
  inputBinding:
    prefix: --noSensitive
- id: in_double_fraction_covered
  doc: "<double in [0,1]>,  --quasiCoverage <double in [0,1]>\nRequire that this fraction\
    \ of a read is covered by MMPs before it is\nconsidered mappable."
  type: boolean
  inputBinding:
    prefix: -z
- id: in__maxnumhits_integerreads
  doc: ",  --maxNumHits <positive integer>\nReads mapping to more than this many loci\
    \ are discarded"
  type: long
  inputBinding:
    prefix: -m
- id: in__nooutputdont_write
  doc: ",  --noOutput\nDon't write out any alignments (for speed testing purposes)"
  type: boolean
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_paththe
  doc: ",  --output <path>\nThe output file (default: stdout)"
  type: File
  outputBinding:
    glob: $(inputs.in__output_paththe)
- id: out__compressedcompress_output
  doc: ",  --compressed\nCompress the output SAM file using zlib"
  type: File
  outputBinding:
    glob: $(inputs.in__compressedcompress_output)
cwlVersion: v1.1
baseCommand:
- RunRapMap.sh
- quasimap
