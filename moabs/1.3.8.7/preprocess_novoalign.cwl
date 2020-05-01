#!/usr/bin/env cwl-runner

baseCommand:
- preprocess_novoalign.sh
class: CommandLineTool
cwlVersion: v1.0
id: preprocess_novoalign.sh
