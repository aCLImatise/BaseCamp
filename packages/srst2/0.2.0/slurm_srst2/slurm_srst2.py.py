from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory, File, Array

Slurm_Srst2_Py_V0_1_0 = CommandToolBuilder(tool="slurm_srst2.py", base_command=["slurm_srst2.py"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="[--input_se INPUT_SE [INPUT_SE ...]]")), ToolInput(tag="in_wall_time", input_type=Int(optional=True), prefix="--walltime", doc=InputDocumentation(doc="wall time (default 0-1:0 = 1 h)")), ToolInput(tag="in_memory", input_type=Int(optional=True), prefix="--memory", doc=InputDocumentation(doc="mem (default 4096 = 4gb)")), ToolInput(tag="in_run_dir", input_type=Directory(optional=True), prefix="--rundir", doc=InputDocumentation(doc="directory to run in (default current dir)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of CPUs per job")), ToolInput(tag="in_script", input_type=File(optional=True), prefix="--script", doc=InputDocumentation(doc="path to srst2.py")), ToolInput(tag="in_input_se", input_type=Array(t=String(), optional=True), prefix="--input_se", doc=InputDocumentation(doc="Single end read file(s) for analysing (may be gzipped)")), ToolInput(tag="in_input_pe", input_type=Array(t=String(), optional=True), prefix="--input_pe", doc=InputDocumentation(doc="Paired end read files for analysing (may be gzipped)")), ToolInput(tag="in_forward", input_type=Int(optional=True), prefix="--forward", doc=InputDocumentation(doc="Designator for forward reads (only used if NOT in\nMiSeq format sample_S1_L001_R1_001.fastq.gz; otherwise\ndefault is _1, i.e. expect forward reads as\nsample_1.fastq.gz)")), ToolInput(tag="in_reverse", input_type=Int(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Designator for reverse reads (only used if NOT in\nMiSeq format sample_S1_L001_R2_001.fastq.gz; otherwise\ndefault is _2, i.e. expect forward reads as\nsample_2.fastq.gz)")), ToolInput(tag="in_other_args", input_type=String(optional=True), prefix="--other_args", doc=InputDocumentation(doc="string containing all other arguments to pass to srst2\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slurm_Srst2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

