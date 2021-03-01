from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Subsample_Py_V0_1_0 = CommandToolBuilder(tool="subsample.py", base_command=["subsample.py"], inputs=[ToolInput(tag="in_by", input_type=String(optional=True), prefix="--by", doc=InputDocumentation(doc="Unique specifier name(default: id)")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="Number of iterations (default: 100)")), ToolInput(tag="in_range", input_type=Int(optional=True), prefix="--range", doc=InputDocumentation(doc="Length range (ex: (1000,2000), default None)")), ToolInput(tag="in_min_fl_count", input_type=Int(optional=True), prefix="--min_fl_count", doc=InputDocumentation(doc="Minimum FL count (default: 1)")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="Step size (default: 10000)"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subsample_Py_V0_1_0().translate("wdl")

