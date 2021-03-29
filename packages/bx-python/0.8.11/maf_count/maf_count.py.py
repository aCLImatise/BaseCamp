from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Maf_Count_Py_V0_1_0 = CommandToolBuilder(tool="maf_count.py", base_command=["maf_count.py"], inputs=[ToolInput(tag="in_cols", input_type=Boolean(optional=True), prefix="--cols", doc=InputDocumentation(doc="count alignment columns rather than number of")), ToolInput(tag="in_each", input_type=Boolean(optional=True), prefix="--each", doc=InputDocumentation(doc="print a count for each alignment rather than whole")), ToolInput(tag="in_file", input_type=File(), position=2, doc=InputDocumentation(doc="-r REF, --ref=REF     reference sequence (first by default, 0..n)"))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Count_Py_V0_1_0().translate("wdl")

