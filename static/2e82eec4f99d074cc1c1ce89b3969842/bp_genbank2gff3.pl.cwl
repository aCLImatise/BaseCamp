class: CommandLineTool
id: bp_genbank2gff3.pl.cwl
inputs:
- id: in_no_infer
  doc: don't infer exon/mRNA subfeatures
  type: boolean?
  inputBinding:
    prefix: --noinfer
- id: in_conf
  doc: "path to the curation configuration file that contains user preferences\nfor\
    \ Genbank entries (must be YAML format)\n(if --manual is passed without --ini,\
    \ user will be prompted to\ncreate the file if any manual input is saved)"
  type: boolean?
  inputBinding:
    prefix: --conf
- id: in_so_file
  doc: "path to to the so.obo file to use for feature type mapping\n(--sofile live\
    \ will download the latest online revision)"
  type: boolean?
  inputBinding:
    prefix: --sofile
- id: in_manual
  doc: "when trying to guess the proper SO term, if more than\none option matches\
    \ the primary tag, the converter will\nwait for user input to choose the correct\
    \ one\n(only works with --sofile)"
  type: boolean?
  inputBinding:
    prefix: --manual
- id: in_dir
  doc: path to a list of genbank flatfiles
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_outdir
  doc: location to write GFF files (can be 'stdout' or '-' for pipe)
  type: boolean?
  inputBinding:
    prefix: --outdir
- id: in_zip
  doc: compress GFF3 output files with gzip
  type: boolean?
  inputBinding:
    prefix: --zip
- id: in_summary
  doc: print a summary of the features in each contig
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_filter
  doc: genbank feature type(s) to ignore
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_split
  doc: "split output to separate GFF and fasta files for\neach genbank record"
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_no_lump
  doc: "separate file for each reference sequence\n(default is to lump all records\
    \ together into one\noutput file for each input file)"
  type: boolean?
  inputBinding:
    prefix: --nolump
- id: in_e_thresh
  doc: "error threshold for unflattener\nset this high (>2) to ignore all unflattener\
    \ errors"
  type: boolean?
  inputBinding:
    prefix: --ethresh
- id: in_format
  doc: "Input format (SeqIO types): GenBank, Swiss or Uniprot, EMBL work\n(GenBank\
    \ is default)"
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_gff_version
  doc: 3 is default, 2 and 2.5 and other Bio::Tools::GFF versions available
  type: boolean?
  inputBinding:
    prefix: --GFF_VERSION
- id: in_quiet
  doc: don't talk about what is being processed
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_type_source
  doc: SO sequence type for source (e.g. chromosome; region; contig)
  type: boolean?
  inputBinding:
    prefix: --typesource
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_genbank2gff3.pl
