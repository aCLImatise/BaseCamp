class: CommandLineTool
id: gem_list.cwl
inputs:
- id: in__installed_check
  doc: ', --[no-]installed             Check for installed gem'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_equivalent__noinstalled
  doc: Equivalent to --no-installed
  type: boolean
  inputBinding:
    prefix: -I
- id: in__details_display
  doc: ", --[no-]details               Display detailed information of gem(s)\n--[no-]versions\
    \              Display only gem names"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_all
  doc: "Display all gem versions\n--[no-]prerelease            Display prerelease\
    \ versions"
  type: boolean
  inputBinding:
    prefix: --all
- id: in__updatesources_update
  doc: ', --[no-]update-sources        Update local source cache'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_local
  doc: Restrict operations to the LOCAL domain
  type: boolean
  inputBinding:
    prefix: --local
- id: in_remote
  doc: Restrict operations to the REMOTE domain
  type: boolean
  inputBinding:
    prefix: --remote
- id: in_both
  doc: Allow LOCAL and REMOTE operations
  type: boolean
  inputBinding:
    prefix: --both
- id: in_bulk_threshold
  doc: "Threshold for switching to bulk\nsynchronization (default 1000)"
  type: long
  inputBinding:
    prefix: --bulk-threshold
- id: in_clear_sources
  doc: Clear the gem sources
  type: boolean
  inputBinding:
    prefix: --clear-sources
- id: in_source
  doc: Append URL to list of remote gem sources
  type: string
  inputBinding:
    prefix: --source
- id: in__use_proxy
  doc: ', --[no-]http-proxy [URL]      Use HTTP proxy for remote operations'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__verbose_set
  doc: ', --[no-]verbose               Set the verbose level of output'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_quiet
  doc: Silence commands
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_config_file
  doc: Use this config file instead of default
  type: File
  inputBinding:
    prefix: --config-file
- id: in_backtrace
  doc: Show stack backtrace on errors
  type: boolean
  inputBinding:
    prefix: --backtrace
- id: in_debug
  doc: Turn on Ruby debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_regexp
  doc: regexp to look for in gem name
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gem
- list
