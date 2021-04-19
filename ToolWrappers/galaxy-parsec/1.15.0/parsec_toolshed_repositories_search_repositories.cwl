class: CommandLineTool
id: parsec_toolshed_repositories_search_repositories.cwl
inputs:
- id: in_page
  doc: 'page requested  [default: 1]'
  type: long?
  inputBinding:
    prefix: --page
- id: in_page_size
  doc: 'page size requested  [default: 10]'
  type: long?
  inputBinding:
    prefix: --page_size
- id: in_search_dot
  doc: "For example::\n{'hits': [{'matched_terms': [],\n'repository': {'approved':\
    \ 'no',\n'description': 'Convert export file to fastq',\n'full_last_updated':\
    \ '2015-01-18 09:48 AM',\n'homepage_url': '',\n'id': 'bdfa208f0cf6504e',\n'last_updated':\
    \ 'less than a year',\n'long_description': 'This is a simple too to convert Solexas\n\
    Export files to FASTQ files.',\n'name': 'export_to_fastq',\n'remote_repository_url':\
    \ '',\n'repo_owner_username': 'louise',\n'times_downloaded': 164},           \
    \             'score':\n4.92},                       {'matched_terms': [],\n'repository':\
    \ {'approved': 'no',\n'description': 'Convert BAM file to fastq',\n'full_last_updated':\
    \ '2015-04-07 11:57 AM',\n'homepage_url': '',\n'id': '175812cd7caaf439',\n'last_updated':\
    \ 'less than a month',\n'long_description': 'Use Picards SamToFastq to convert\
    \ a BAM\nfile to fastq. Useful for storing reads as BAM in Galaxy and\nconverting\
    \ to fastq when needed for analysis.',\n'name': 'bam_to_fastq',\n'remote_repository_url':\
    \ '',\n'repo_owner_username': 'brad-chapman',\n'times_downloaded': 138},     \
    \                   'score':\n4.14}],              'hostname':\n'https://testtoolshed.g2.bx.psu.edu/',\
    \              'page':\n'1',              'page_size': '2',\n'total_results':\
    \ '64'}"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- toolshed_repositories
- search_repositories
