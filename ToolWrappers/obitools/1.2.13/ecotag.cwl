class: CommandLineTool
id: ecotag.cwl
inputs:
- id: in_sort
  doc: '> seq_tag.fasta'
  type: string?
  inputBinding:
    prefix: --sort
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_ref_database
  doc: fasta file containing reference sequences
  type: File?
  inputBinding:
    prefix: --ref-database
- id: in_minimum_identity
  doc: minimum identity to consider.
  type: string?
  inputBinding:
    prefix: --minimum-identity
- id: in_minimum_circle
  doc: minimum identity considered for the assignment circle.
  type: string?
  inputBinding:
    prefix: --minimum-circle
- id: in_explain
  doc: "Add in the output CD (complementary data) record to\nexplain identification\
    \ decision"
  type: string?
  inputBinding:
    prefix: --explain
- id: in_uniq
  doc: Apply a uniq filter on query sequences before
  type: boolean?
  inputBinding:
    prefix: --uniq
- id: in_reverse
  doc: Sort in reverse order (should be used with -S)
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_errors
  doc: Tolerated rate of wrong assignation
  type: string?
  inputBinding:
    prefix: --errors
- id: in_min_matches
  doc: Minimum congruent assignation
  type: long?
  inputBinding:
    prefix: --min-matches
- id: in_cache_size
  doc: Cache size for the aligment score
  type: long?
  inputBinding:
    prefix: --cache-size
- id: in_database
  doc: ecoPCR taxonomy Database name
  type: File?
  inputBinding:
    prefix: --database
- id: in_taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File?
  inputBinding:
    prefix: --taxonomy-dump
- id: in_skip
  doc: skip the N first sequences
  type: string?
  inputBinding:
    prefix: --skip
- id: in_only
  doc: treat only N sequences
  type: string?
  inputBinding:
    prefix: --only
- id: in_genbank
  doc: Input file is in genbank format
  type: boolean?
  inputBinding:
    prefix: --genbank
- id: in_embl
  doc: Input file is in embl format
  type: boolean?
  inputBinding:
    prefix: --embl
- id: in_skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean?
  inputBinding:
    prefix: --skip-on-error
- id: in_fast_a
  doc: "Input file is in fasta nucleic format (including\nobitools fasta extentions)"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_eco_pcr
  doc: Input file is in ecopcr format
  type: boolean?
  inputBinding:
    prefix: --ecopcr
- id: in_raw_fast_a
  doc: "Input file is in fasta format (but more tolerant to\nformat variant)"
  type: boolean?
  inputBinding:
    prefix: --raw-fasta
- id: in_sanger
  doc: "Input file is in sanger fastq nucleic format (standard\nfastq)"
  type: boolean?
  inputBinding:
    prefix: --sanger
- id: in_solexa
  doc: "Input file is in fastq nucleic format produced by\nsolexa sequencer"
  type: boolean?
  inputBinding:
    prefix: --solexa
- id: in_eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean?
  inputBinding:
    prefix: --ecopcrdb
- id: in_nuc
  doc: Input file contains nucleic sequences
  type: boolean?
  inputBinding:
    prefix: --nuc
- id: in_prot
  doc: Input file contains protein sequences
  type: boolean?
  inputBinding:
    prefix: --prot
- id: in_fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean?
  inputBinding:
    prefix: --fasta-output
- id: in_fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean?
  inputBinding:
    prefix: --fastq-output
- id: in_eco_pcr_db_output
  doc: "Output sequences in ecopcr database format (sequence\nrecords are not printed\
    \ on standard output)"
  type: string?
  inputBinding:
    prefix: --ecopcrdb-output
- id: in_uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean?
  inputBinding:
    prefix: --uppercase
- id: in_bash
  doc: '> ecotag -d embl_r113  -R ReferenceDB.fasta \'
  type: string
  inputBinding:
    position: 0
- id: in_identification
  doc: --sort=SORT           Sort output on input sequence tag
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ecotag
