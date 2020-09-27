class: CommandLineTool
id: pandoc.cwl
inputs:
- id: in_from
  doc: "-t FORMAT, -w FORMAT  --to=FORMAT, --write=FORMAT\n-o FILE               --output=FILE\n\
    --data-dir=DIRECTORY\n--base-header-level=NUMBER\n--strip-empty-paragraphs\n--indented-code-classes=STRING\n\
    -F PROGRAM            --filter=PROGRAM\n--lua-filter=SCRIPTPATH\n-p          \
    \          --preserve-tabs\n--tab-stop=NUMBER\n--track-changes=accept|reject|all\n\
    --file-scope\n--extract-media=PATH\n-s                    --standalone\n--template=FILE\n\
    -M KEY[:VALUE]        --metadata=KEY[:VALUE]\n-V KEY[:VALUE]        --variable=KEY[:VALUE]\n\
    -D FORMAT             --print-default-template=FORMAT\n--print-default-data-file=FILE\n\
    --print-highlight-style=STYLE|FILE\n--dpi=NUMBER\n--eol=crlf|lf|native\n--wrap=auto|none|preserve\n\
    --columns=NUMBER\n--strip-comments\n--toc, --table-of-contents\n--toc-depth=NUMBER\n\
    --no-highlight\n--highlight-style=STYLE|FILE\n--syntax-definition=FILE\n-H FILE\
    \               --include-in-header=FILE\n-B FILE               --include-before-body=FILE\n\
    -A FILE               --include-after-body=FILE\n--resource-path=SEARCHPATH\n\
    --request-header=NAME:VALUE\n--self-contained\n--html-q-tags\n--ascii\n--reference-links\n\
    --reference-location=block|section|document\n--atx-headers\n--top-level-division=section|chapter|part\n\
    -N                    --number-sections\n--number-offset=NUMBERS\n--listings\n\
    -i                    --incremental\n--slide-level=NUMBER\n--section-divs\n--default-image-extension=extension\n\
    --email-obfuscation=none|javascript|references\n--id-prefix=STRING\n-T STRING\
    \             --title-prefix=STRING\n-c URL                --css=URL\n--reference-doc=FILE\n\
    --epub-subdirectory=DIRNAME\n--epub-cover-image=FILE\n--epub-metadata=FILE\n--epub-embed-font=FILE\n\
    --epub-chapter-level=NUMBER\n--pdf-engine=PROGRAM\n--pdf-engine-opt=STRING\n--bibliography=FILE\n\
    --csl=FILE\n--citation-abbreviations=FILE\n--natbib\n--biblatex\n--mathml\n--webtex[=URL]\n\
    --mathjax[=URL]\n--katex[=URL]\n-m[URL]               --latexmathml[=URL], --asciimathml[=URL]\n\
    --mimetex[=URL]\n--jsmath[=URL]\n--gladtex\n--abbreviations=FILE\n--trace\n--dump-args\n\
    --ignore-args\n--verbose\n--quiet\n--fail-if-warnings\n--log=FILE\n--bash-completion\n\
    --list-input-formats\n--list-output-formats\n--list-extensions[=FORMAT]\n--list-highlight-languages\n\
    --list-highlight-styles\n-v                    --version\n-h                 \
    \   --help\n"
  type: long
  inputBinding:
    prefix: --from
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pandoc
