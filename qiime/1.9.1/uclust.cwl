class: CommandLineTool
id: uclust.cwl
inputs:
- id: split
  doc: is partition size in Mb (default 1000).
  type: string
  inputBinding:
    prefix: --split
- id: tmpdir
  doc: is directory for partition files (default current dir).
  type: string
  inputBinding:
    prefix: --tmpdir
- id: types
  doc: Record types to include (default SH).
  type: string
  inputBinding:
    prefix: --types
- id: user_sort
  doc: Don't assume input is sorted by length (default assume sorted).
  type: boolean
  inputBinding:
    prefix: --usersort
- id: maxlen
  doc: Ignore query sequences longer than L (default 10000).
  type: string
  inputBinding:
    prefix: --maxlen
- id: min_len
  doc: Ignore query sequences shorter than L (default 16).
  type: string
  inputBinding:
    prefix: --minlen
- id: amino
  doc: Input is amino acids (default infer from ACGTU frequencies).
  type: boolean
  inputBinding:
    prefix: --amino
- id: nucleo
  doc: Input is nucelotides (default infer from ACGTU frequencies).
  type: boolean
  inputBinding:
    prefix: --nucleo
- id: bump
  doc: Bump percent (default 50, 0=don't bump).
  type: string
  inputBinding:
    prefix: --bump
- id: step_words
  doc: Target nr. of common words (default 8, 0=don't step).
  type: string
  inputBinding:
    prefix: --stepwords
- id: rev
  doc: Reverse strand matching (default plus strand only)
  type: boolean
  inputBinding:
    prefix: --rev
- id: lib_only
  doc: Match to --lib only (default add new seed if not matched).
  type: boolean
  inputBinding:
    prefix: --libonly
- id: self
  doc: Ignore target sequence with same label as query.
  type: boolean
  inputBinding:
    prefix: --self
- id: id_prefix
  doc: First n letters of query and seed must be identical (default 0).
  type: string
  inputBinding:
    prefix: --idprefix
- id: exact
  doc: Same as --maxrejects 0 --nowordcountreject.
  type: boolean
  inputBinding:
    prefix: --exact
- id: optimal
  doc: Same as --maxrejects 0 --maxaccepts 0 --nowordcountreject.
  type: boolean
  inputBinding:
    prefix: --optimal
- id: hsp
  doc: Minimum length of HSP (default 32).
  type: string
  inputBinding:
    prefix: --hsp
- id: hsp_score
  doc: Minimum score/col for HSP (default 1.0)
  type: string
  inputBinding:
    prefix: --hspscore
- id: k
  doc: Word length for HSP-finding (default 3 amino acids, 4 nucleotides).
  type: string
  inputBinding:
    prefix: --k
- id: band
  doc: Band radius for regions between HSPs (default 16, 0=don't band).
  type: string
  inputBinding:
    prefix: --band
- id: check_fast
  doc: Compare fast & slow alignments and report statistics in --log file.
  type: boolean
  inputBinding:
    prefix: --check_fast
- id: quiet
  doc: Don't output progress messages to stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- uclust
