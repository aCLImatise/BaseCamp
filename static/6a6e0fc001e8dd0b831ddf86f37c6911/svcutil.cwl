class: CommandLineTool
id: svcutil.cwl
inputs:
- id: in_async
  doc: Generate async methods.
  type: boolean?
  inputBinding:
    prefix: --async
- id: in_config
  doc: Configuration file names to generate.
  type: File?
  inputBinding:
    prefix: --config
- id: in_internal
  doc: Generate types as internal.
  type: boolean?
  inputBinding:
    prefix: --internal
- id: in_language
  doc: Specify target code LANGUAGE. Default is 'csharp'.
  type: string?
  inputBinding:
    prefix: --language
- id: in_mono_touch
  doc: Generate MonoTouch client. (This option may vanish)
  type: boolean?
  inputBinding:
    prefix: --monotouch
- id: in_moonlight
  doc: Generate moonlight client. (This option may vanish)
  type: boolean?
  inputBinding:
    prefix: --moonlight
- id: in_namespace
  doc: Code namespace name to generate.
  type: string?
  inputBinding:
    prefix: --namespace
- id: in_no_config
  doc: Do not generate config file.
  type: boolean?
  inputBinding:
    prefix: --noConfig
- id: in_nologo
  doc: Do not show tool logo.
  type: boolean?
  inputBinding:
    prefix: --noLogo
- id: in_out
  doc: Output code filename.
  type: File?
  inputBinding:
    prefix: --out
- id: in_reference
  doc: Referenced assembly files.
  type: string?
  inputBinding:
    prefix: --reference
- id: in_target_client_version
  doc: "[=VALUE]\nIndicate target client version. Valid values:\nVersion35"
  type: boolean?
  inputBinding:
    prefix: --targetClientVersion
- id: in_typed_message
  doc: Generate typed messages.
  type: boolean?
  inputBinding:
    prefix: --typedMessage
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output code filename.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- svcutil
