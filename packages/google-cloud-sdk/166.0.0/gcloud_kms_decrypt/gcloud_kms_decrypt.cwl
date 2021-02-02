class: CommandLineTool
id: gcloud_kms_decrypt.cwl
inputs:
- id: in_plain_text_file
  doc: "[--additional-authenticated-data-file=ADDITIONAL_AUTHENTICATED_DATA_FILE]\n\
    [--key=KEY] [--keyring=KEYRING] [--location=LOCATION]\n[GCLOUD_WIDE_FLAG ...]"
  type: File
  inputBinding:
    prefix: --plaintext-file
- id: in_ciphertext_file
  doc: Path to the ciphertext file to decrypt.
  type: File
  inputBinding:
    prefix: --ciphertext-file
- id: in_additional_authenticated_data_file
  doc: Path to the optional file containing the additional authenticated data.
  type: File
  inputBinding:
    prefix: --additional-authenticated-data-file
- id: in_key
  doc: The key to use for decryption.
  type: string
  inputBinding:
    prefix: --key
- id: in_keyring
  doc: The containing keyring.
  type: string
  inputBinding:
    prefix: --keyring
- id: in_location
  doc: The location of the requested resource.
  type: string
  inputBinding:
    prefix: --location
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- kms
- decrypt
