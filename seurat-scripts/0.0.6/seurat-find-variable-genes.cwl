#!/usr/bin/env cwl-runner

baseCommand:
- seurat-find-variable-genes.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-find-variable-genes.r
