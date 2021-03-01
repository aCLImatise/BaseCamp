class: CommandLineTool
id: _xmllint.cwl
inputs:
- id: in_debug
  doc: ': dump a debug tree of the in-memory document'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_shell
  doc: ': run a navigating shell'
  type: boolean?
  inputBinding:
    prefix: --shell
- id: in_debug_ent
  doc: ': debug the entities defined in the document'
  type: boolean?
  inputBinding:
    prefix: --debugent
- id: in_copy
  doc: ': used to test the internal copy implementation'
  type: boolean?
  inputBinding:
    prefix: --copy
- id: in_recover
  doc: ': output what was parsable on broken XML documents'
  type: boolean?
  inputBinding:
    prefix: --recover
- id: in_huge
  doc: ': remove any internal arbitrary parser limits'
  type: boolean?
  inputBinding:
    prefix: --huge
- id: in_no_ent
  doc: ': substitute entity references by their value'
  type: boolean?
  inputBinding:
    prefix: --noent
- id: in_no_enc
  doc: ': ignore any encoding specified inside the document'
  type: boolean?
  inputBinding:
    prefix: --noenc
- id: in_no_out
  doc: ": don't output the result tree"
  type: boolean?
  inputBinding:
    prefix: --noout
- id: in_path
  doc: "'paths': provide a set of paths for resources"
  type: boolean?
  inputBinding:
    prefix: --path
- id: in_load_trace
  doc: ': print trace of all external entities loaded'
  type: boolean?
  inputBinding:
    prefix: --load-trace
- id: in_no_net
  doc: ': refuse to fetch DTDs or entities over network'
  type: boolean?
  inputBinding:
    prefix: --nonet
- id: in_no_compact
  doc: ': do not generate compact text nodes'
  type: boolean?
  inputBinding:
    prefix: --nocompact
- id: in_html_out
  doc: ': output results as HTML'
  type: boolean?
  inputBinding:
    prefix: --htmlout
- id: in_nowrap
  doc: ': do not put HTML doc wrapper'
  type: boolean?
  inputBinding:
    prefix: --nowrap
- id: in_valid
  doc: ': validate the document in addition to std well-formed check'
  type: boolean?
  inputBinding:
    prefix: --valid
- id: in_post_valid
  doc: ': do a posteriori validation, i.e after parsing'
  type: boolean?
  inputBinding:
    prefix: --postvalid
- id: in_dtd_valid
  doc: ': do a posteriori validation against a given DTD'
  type: string?
  inputBinding:
    prefix: --dtdvalid
- id: in_dtd_valid_fpi
  doc: ': same but name the DTD with a Public Identifier'
  type: string?
  inputBinding:
    prefix: --dtdvalidfpi
- id: in_timing
  doc: ': print some timings'
  type: boolean?
  inputBinding:
    prefix: --timing
- id: in_output
  doc: 'or -o file: save to a given file'
  type: File?
  inputBinding:
    prefix: --output
- id: in_repeat
  doc: ': repeat 100 times, for timing or profiling'
  type: boolean?
  inputBinding:
    prefix: --repeat
- id: in_insert
  doc: ': ad-hoc test for valid insertions'
  type: boolean?
  inputBinding:
    prefix: --insert
- id: in_compress
  doc: ': turn on gzip compression of output'
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_html
  doc: ': use the HTML parser'
  type: boolean?
  inputBinding:
    prefix: --html
- id: in_xml_out
  doc: ': force to use the XML serializer when using --html'
  type: boolean?
  inputBinding:
    prefix: --xmlout
- id: in_node_fdtd
  doc: ': do not default HTML doctype'
  type: boolean?
  inputBinding:
    prefix: --nodefdtd
- id: in_push
  doc: ': use the push mode of the parser'
  type: boolean?
  inputBinding:
    prefix: --push
- id: in_push_small
  doc: ': use the push mode of the parser using tiny increments'
  type: boolean?
  inputBinding:
    prefix: --pushsmall
- id: in_memory
  doc: ': parse from memory'
  type: boolean?
  inputBinding:
    prefix: --memory
- id: in_maxmem
  doc: ': limits memory allocation to nbbytes bytes'
  type: string?
  inputBinding:
    prefix: --maxmem
- id: in_no_warning
  doc: ': do not emit warnings from parser/validator'
  type: boolean?
  inputBinding:
    prefix: --nowarning
- id: in_no_blanks
  doc: ': drop (ignorable?) blanks spaces'
  type: boolean?
  inputBinding:
    prefix: --noblanks
- id: in_no_cdata
  doc: ': replace cdata section with text nodes'
  type: boolean?
  inputBinding:
    prefix: --nocdata
- id: in_format
  doc: ': reformat/reindent the output'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_encode
  doc: ': output in the given encoding'
  type: string?
  inputBinding:
    prefix: --encode
- id: in_drop_dtd
  doc: ': remove the DOCTYPE of the input docs'
  type: boolean?
  inputBinding:
    prefix: --dropdtd
- id: in_pretty
  doc: ": pretty-print in a particular style\n0 Do not pretty print\n1 Format the\
    \ XML content, as --format\n2 Add whitespace inside tags, preserving content"
  type: long?
  inputBinding:
    prefix: --pretty
- id: in_cone_four_n
  doc: ': save in W3C canonical format v1.0 (with comments)'
  type: boolean?
  inputBinding:
    prefix: --c14n
- id: in_cone_four_none_one
  doc: ': save in W3C canonical format v1.1 (with comments)'
  type: boolean?
  inputBinding:
    prefix: --c14n11
- id: in_exc_cone_four_n
  doc: ': save in W3C exclusive canonical format (with comments)'
  type: boolean?
  inputBinding:
    prefix: --exc-c14n
- id: in_ns_clean
  doc: ': remove redundant namespace declarations'
  type: boolean?
  inputBinding:
    prefix: --nsclean
- id: in_test_io
  doc: ': test user I/O support'
  type: boolean?
  inputBinding:
    prefix: --testIO
- id: in_catalogs
  doc: ": use SGML catalogs from $SGML_CATALOG_FILES\notherwise XML Catalogs starting\
    \ from\nfile:///etc/xml/catalog are activated by default"
  type: boolean?
  inputBinding:
    prefix: --catalogs
- id: in_no_catalogs
  doc: ': deactivate all catalogs'
  type: boolean?
  inputBinding:
    prefix: --nocatalogs
- id: in_auto
  doc: ': generate a small doc on the fly'
  type: boolean?
  inputBinding:
    prefix: --auto
- id: in_xinclude
  doc: ': do XInclude processing'
  type: boolean?
  inputBinding:
    prefix: --xinclude
- id: in_nox_include_node
  doc: ': same but do not generate XInclude nodes'
  type: boolean?
  inputBinding:
    prefix: --noxincludenode
- id: in_no_fix_up_base_uris
  doc: ': do not fixup xml:base uris'
  type: boolean?
  inputBinding:
    prefix: --nofixup-base-uris
- id: in_load_dtd
  doc: ': fetch external DTD'
  type: boolean?
  inputBinding:
    prefix: --loaddtd
- id: in_dtd_attr
  doc: ': loaddtd + populate the tree with inherited attributes'
  type: boolean?
  inputBinding:
    prefix: --dtdattr
- id: in_stream
  doc: ': use the streaming interface to process very large files'
  type: boolean?
  inputBinding:
    prefix: --stream
- id: in_walker
  doc: ': create a reader and walk though the resulting doc'
  type: boolean?
  inputBinding:
    prefix: --walker
- id: in_pattern
  doc: ': test the pattern support'
  type: string?
  inputBinding:
    prefix: --pattern
- id: in_chk_register
  doc: ': verify the node registration code'
  type: boolean?
  inputBinding:
    prefix: --chkregister
- id: in_relaxng
  doc: ': do RelaxNG validation against the schema'
  type: string?
  inputBinding:
    prefix: --relaxng
- id: in_schema
  doc: ': do validation against the WXS schema'
  type: string?
  inputBinding:
    prefix: --schema
- id: in_schematron
  doc: ': do validation against a schematron'
  type: string?
  inputBinding:
    prefix: --schematron
- id: in_sax_one
  doc: ': use the old SAX1 interfaces for processing'
  type: boolean?
  inputBinding:
    prefix: --sax1
- id: in_sax
  doc: ': do not build a tree but work just at the SAX level'
  type: boolean?
  inputBinding:
    prefix: --sax
- id: in_old_xml_one_zero
  doc: ': use XML-1.0 parsing rules before the 5th edition'
  type: boolean?
  inputBinding:
    prefix: --oldxml10
- id: in_xpath
  doc: ': evaluate the XPath expression, imply --noout'
  type: string?
  inputBinding:
    prefix: --xpath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _xmllint
