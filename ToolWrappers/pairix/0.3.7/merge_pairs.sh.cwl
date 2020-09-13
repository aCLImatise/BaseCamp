class: CommandLineTool
id: ../../../merge_pairs.sh.cwl
inputs:
- id: in_offset
  doc: decompress at virtual file pointer (0-based uncompressed offset)
  type: long
  inputBinding:
    prefix: --offset
- id: in_stdout
  doc: write on standard output, keep original files unchanged
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: --decompress
- id: in_force
  doc: overwrite files without asking
  type: boolean
  inputBinding:
    prefix: --force
- id: in_index
  doc: compress and create BGZF index
  type: boolean
  inputBinding:
    prefix: --index
- id: in_index_name
  doc: name of BGZF index file [file.gz.gzi]
  type: File
  inputBinding:
    prefix: --index-name
- id: in_compress_level
  doc: Compression level to use when compressing; 0 to 9, or -1 for default [-1]
  type: long
  inputBinding:
    prefix: --compress-level
- id: in_re_index
  doc: (re)index compressed file
  type: boolean
  inputBinding:
    prefix: --reindex
- id: in_reb_gzip
  doc: use an index file to bgzip a file
  type: boolean
  inputBinding:
    prefix: --rebgzip
- id: in_size
  doc: decompress INT bytes (uncompressed size)
  type: long
  inputBinding:
    prefix: --size
- id: in_threads
  doc: number of compression threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_test
  doc: test integrity of compressed file
  type: boolean
  inputBinding:
    prefix: --test
- id: in_preset_pairs_mergednodups
  doc: 'preset: pairs, merged_nodups, old_merged_nodups, gff, bed, sam, vcf, psltbl
    [gff]'
  type: string
  inputBinding:
    prefix: -p
- id: in_e
  doc: end1 column; can be identical to '-b' [5]
  type: long
  inputBinding:
    prefix: -e
- id: in_start_column
  doc: start2 column [null]
  type: long
  inputBinding:
    prefix: -u
- id: in_v
  doc: end2 column; can be identical to '-u' [null or identical to the start2 specified
    by -u]
  type: long
  inputBinding:
    prefix: -v
- id: in_delimiter_space_instead
  doc: delimiter is space instead of tab.
  type: boolean
  inputBinding:
    prefix: -T
- id: in_query_region_string
  doc: query region is not a string but a file listing query regions
  type: boolean
  inputBinding:
    prefix: -L
- id: in_skip_first_int
  doc: skip first INT lines [0]
  type: long
  inputBinding:
    prefix: -S
- id: in_symbol_query_region
  doc: symbol for query region separator [|]
  type: string
  inputBinding:
    prefix: -w
- id: in_zerobased_coordinate
  doc: zero-based coordinate
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_print_only_lines
  doc: print only the header lines
  type: boolean
  inputBinding:
    prefix: -H
- id: in_print_only_number
  doc: print only the number of bgzf blocks for existing chromosome (pairs)
  type: boolean
  inputBinding:
    prefix: -B
- id: in_print_only_region
  doc: print only the region split character
  type: boolean
  inputBinding:
    prefix: -W
- id: in_only_check_occurs
  doc: Only check if the file is a triangle (i.e. a chromosome pair occurs only in
    one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_print_only_count
  doc: print only the total line count (same as gunzip -c | wc -l but much faster)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_autoflip_query_exist
  doc: autoflip query when the matching chromosome pair doesn't exist
  type: boolean
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge-pairs.sh
