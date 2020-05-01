#!/usr/bin/env cwl-runner

baseCommand:
- deduplicate_unitigs.sh
class: CommandLineTool
cwlVersion: v1.0
id: deduplicate_unitigs.sh
