#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

inputs:
  name:
    type: string
    inputBinding:
      position: 1
  contents:
    type: string
    inputBinding:
      position: 2
outputs:
  out_file:
    type: File[]
    outputBinding:
      glob: 
       - $(inputs.name)_1.txt
       - $(inputs.name)_2.txt

baseCommand: /home/weliu/workspace/cwlexec/src/test/integration-test/integration/glob_eval_patterns/duplicates.sh
