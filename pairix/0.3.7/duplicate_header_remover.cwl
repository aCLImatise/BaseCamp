#!/usr/bin/env cwl-runner

baseCommand:
- duplicate_header_remover.pl
class: CommandLineTool
cwlVersion: v1.0
id: duplicate_header_remover.pl
