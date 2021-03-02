from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, Float

Downsample_Py_V0_1_0 = CommandToolBuilder(tool="downsample.py", base_command=["downsample.py"], inputs=[ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="Readfile (flag can be used repeatadly to process\nseveral files")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="Desired size of subsample in percent (1-100; default =\n50)")), ToolInput(tag="in_interleave", input_type=Boolean(optional=True), prefix="--interleave", doc=InputDocumentation(doc="Optional. In case of two input files, data will be\ninterleaved from these in the output. Otherwise data\nwill be treated as already interleaved.")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Optional. Seed for random number generator")), ToolInput(tag="in_vdot_zero_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/mitobim:1.9.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Downsample_Py_V0_1_0().translate("wdl")

