from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Int, String

Chisel_Bedding_V0_1_0 = CommandToolBuilder(tool="chisel_bedding", base_command=["chisel_bedding"], inputs=[ToolInput(tag="in_run_dir", input_type=Directory(optional=True), prefix="--rundir", doc=InputDocumentation(doc="Running directory (default: current directory)")), ToolInput(tag="in_raw_calls", input_type=Boolean(optional=True), prefix="--rawcalls", doc=InputDocumentation(doc="Use raw copy numbers instead of consensus corrected\nones (default: False)")), ToolInput(tag="in_no_extending", input_type=Boolean(optional=True), prefix="--noextending", doc=InputDocumentation(doc="Merge consecutive bins only if they are neighboring\n(default: False, segments are extended to fill gaps)")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Number of parallele jobs to use (default: equal to\nnumber of available processors)\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file with inferred copy numbers (default:\ncalls/calls.tsv)"))], outputs=[], container="quay.io/biocontainers/chisel:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Bedding_V0_1_0().translate("wdl")

