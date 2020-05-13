class: CommandLineTool
id: ganon_build.cwl
inputs:
- id: r
  doc: ', --rank           Target taxonomic rank for classification [assembly,taxid,species,genus,...].
    Default: species'
  type: boolean
  inputBinding:
    prefix: -r
- id: k
  doc: ', --kmer-size      The k-mer size for the interleaved bloom filter. Default:
    19'
  type: boolean
  inputBinding:
    prefix: -k
- id: n
  doc: ', --hash-functions  The number of hash functions for the interleaved bloom
    filter. Default: 3'
  type: boolean
  inputBinding:
    prefix: -n
- id: f
  doc: ', --max-fp         Max. false positive rate for k-mer classification. Default:
    0.05'
  type: boolean
  inputBinding:
    prefix: -f
- id: m
  doc: ', --max-bloom-size  Approx. maximum filter size in Megabytes (MB). Will estimate
    best --bin-length based on --kmer-size, --hash-functions and --max-fp [Mutually
    exclusive --fixed-bloom-size]'
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: ', --bin-length     Maximum length (in bp) for each bin. Default: auto'
  type: boolean
  inputBinding:
    prefix: -l
- id: t
  doc: ', --threads        Number of subprocesses/threads to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: -t
- id: fixed_bloom_size
  doc: Fixed size for filter in Megabytes (MB), will ignore --max-fp [Mutually exclusive
    --max-bloom-size]
  type: boolean
  inputBinding:
    prefix: --fixed-bloom-size
- id: fragment_length
  doc: 'Fragment length (in bp). Set to 0 to not fragment sequences. Default: --bin-length
    - --overlap-length'
  type: boolean
  inputBinding:
    prefix: --fragment-length
- id: overlap_length
  doc: 'Fragment overlap length (in bp). Should be bigger than the read length used
    for classification. Default: 300'
  type: boolean
  inputBinding:
    prefix: --overlap-length
- id: seq_info
  doc: '[ [ ...]]  Mode to obtain sequence information. For each sequence entry provided,
    ganon requires taxonomic and seq. length information. If a small number of sequences
    is provided (<50000) or when --rank assembly, ganon will automatically obtain
    data with NCBI E-utils websevices (eutils). Offline mode will download batch files
    from NCBI Taxonomy and look for taxonomic ids in the order provided. Options:
    [nucl_gb nucl_wgs nucl_est nucl_gss pdb prot dead_nucl dead_wgs dead_prot], eutils
    (force webservices) or auto (uses eutils or [nucl_gb nucl_wgs]). Default: auto
    [Mutually exclusive --seq- info-file]'
  type: boolean
  inputBinding:
    prefix: --seq-info
- id: seq_info_file
  doc: Pre-generated file with sequence information (seqid <tab> seq.len <tab> taxid
    [<tab> assembly id]) [Mutually exclusive --seq-info]
  type: boolean
  inputBinding:
    prefix: --seq-info-file
- id: tax_dump_file
  doc: '[ [ ...]] Force use of a specific version of the (taxdump.tar.gz) or (nodes.dmp
    names.dmp [merged.dmp]) file(s) from NCBI Taxonomy (otherwise it will be automatically
    downloaded)'
  type: boolean
  inputBinding:
    prefix: --taxdump-file
- id: input_directory
  doc: Directory containing input files
  type: boolean
  inputBinding:
    prefix: --input-directory
- id: input_extension
  doc: Extension of files to use with --input-directory (provide it without * expansion,
    e.g. ".fna.gz")
  type: boolean
  inputBinding:
    prefix: --input-extension
- id: verbose
  doc: Verbose mode for ganon-build
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db_prefix
  doc: Database output prefix (.ibf, .map, .tax, .gnn will be created)
  type: string
  inputBinding:
    prefix: --db-prefix
- id: i
  doc: '[ [ ...]], --input-files [ [ ...]] Input reference sequence fasta files [.gz]'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- ganon
- build
