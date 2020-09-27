class: CommandLineTool
id: hca_dss_put_bundle.cwl
inputs:
- id: in_creator_uid
  doc: User ID who is creating this bundle.
  type: string
  inputBinding:
    prefix: --creator-uid
- id: in_files
  doc: "This is a list of dictionaries describing each of the files. Each dictionary\
    \ includes the fields: - The \"uuid\" of a file already previously uploaded with\
    \ \"PUT file/{uuid}\". - The \"version\" timestamp of the file. - The \"name\"\
    \ of the file. This can be most anything, and is the name the file will have when\
    \ downloaded. - The \"indexed\" field, which specifies whether a file should be\
    \ indexed or not.\nBundle manifests exceeding 20,000 files will not be included\
    \ in the Elasticsearch index document.\nExample representing 2 files with dummy\
    \ values: [{'uuid': 'ce55fd51-7833-469b-be0b-5da88ebebfcd',\n'version': '2017-06-16T193604.240704Z',\n\
    'name': 'dinosaur_dna.fa',\n'indexed': False},\n{'uuid': 'ae55fd51-7833-469b-be0b-5da88ebebfca',\n\
    'version': '0303-04-23T193604.240704Z',\n'name': 'dragon_dna.fa',\n'indexed':\
    \ False}]"
  type: string[]
  inputBinding:
    prefix: --files
- id: in_uuid
  doc: A RFC4122-compliant ID for the bundle.
  type: long
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to write to.
  type: string
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- put-bundle
