class: CommandLineTool
id: gem_mapper.cwl
inputs:
- id: in_mandatory
  doc: (mandatory)
  type: File?
  inputBinding:
    prefix: -I
- id: in_emulate_complement
  doc: (for indices lacking it)
  type: boolean?
  inputBinding:
    prefix: --emulate-complement
- id: in_fasta_fastq_map
  doc: (FASTA, FASTQ or MAP, default=stdin)
  type: string?
  inputBinding:
    prefix: -i
- id: in_granularity
  doc: "(default=10000 lines from stdin,\n2500000 bytes from file)"
  type: long?
  inputBinding:
    prefix: --granularity
- id: in_defaultstdout
  doc: (default=stdout)
  type: string?
  inputBinding:
    prefix: -o
- id: in_quality_format
  doc: "'ignore'|'offset-33'|'offset-64'\n(mandatory with FASTQ input)"
  type: boolean?
  inputBinding:
    prefix: --quality-format
- id: in_gem_quality_threshold
  doc: (default=26, that is e<=2e-3)
  type: long?
  inputBinding:
    prefix: --gem-quality-threshold
- id: in_mismatch_alphabet
  doc: (default="ACGT")
  type: string?
  inputBinding:
    prefix: --mismatch-alphabet
- id: in_mismatches__default
  doc: '|<%_mismatches>       (default=0.04)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_var_9
  doc: '|<%_differences>   (default=0.04)'
  type: long?
  inputBinding:
    prefix: -e
- id: in_min_matched_bases
  doc: '|<%>         (default=0.80)'
  type: long?
  inputBinding:
    prefix: --min-matched-bases
- id: in_max_big_in_del_length
  doc: (default=15)
  type: long?
  inputBinding:
    prefix: --max-big-indel-length
- id: in_strata_after_best
  doc: (default=0)
  type: long?
  inputBinding:
    prefix: --strata-after-best
- id: in_fast_mapping
  doc: "|'adaptive'       (default=false)"
  type: long?
  inputBinding:
    prefix: --fast-mapping
- id: in_unique_mapping
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --unique-mapping
- id: in_max_decoded_matches
  doc: "|'all'  (default=20)"
  type: long?
  inputBinding:
    prefix: --max-decoded-matches
- id: in_min_decoded_strata
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --min-decoded-strata
- id: in_paired_end_alignment
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --paired-end-alignment
- id: in_map_both_ends
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --map-both-ends
- id: in_min_insert_size
  doc: (default=0)
  type: long?
  inputBinding:
    prefix: --min-insert-size
- id: in_var_20
  doc: '|<%_differences>   (default=0.30)'
  type: long?
  inputBinding:
    prefix: -E
- id: in_max_extendable_matches
  doc: "|'all'  (default=20)"
  type: long?
  inputBinding:
    prefix: --max-extendable-matches
- id: in_max_extensions_per_match
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --max-extensions-per-match
- id: in_unique_pairing
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --unique-pairing
- id: in_threads
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_show_license
  doc: (print license)
  type: boolean?
  inputBinding:
    prefix: --show-license
- id: in_gem_mapper
  doc: '[File input/output]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-mapper
