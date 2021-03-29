from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Maf_Extract_Ranges_Py_V0_1_0 = CommandToolBuilder(tool="maf_extract_ranges.py", base_command=["maf_extract_ranges.py"], inputs=[ToolInput(tag="in_min_cols", input_type=Int(optional=True), prefix="--mincols", doc=InputDocumentation(doc="Minimum length (columns) required for alignment to be\noutput\n")), ToolInput(tag="in_interval_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_index", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Extract_Ranges_Py_V0_1_0().translate("wdl")

