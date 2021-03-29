from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Table_Filter_Py_V0_1_0 = CommandToolBuilder(tool="table_filter.py", base_command=["table_filter.py"], inputs=[ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="keep header in output")), ToolInput(tag="in_comments", input_type=Boolean(optional=True), prefix="--comments", doc=InputDocumentation(doc="keep comments in output")), ToolInput(tag="in_force_header", input_type=Boolean(optional=True), prefix="--force-header", doc=InputDocumentation(doc="assume the first line is a header even if it does not\nstart with '#'")), ToolInput(tag="in_cols", input_type=String(optional=True), prefix="--cols", doc=InputDocumentation(doc="names or indexes of columns to keep")), ToolInput(tag="in_expression", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Table_Filter_Py_V0_1_0().translate("wdl")

