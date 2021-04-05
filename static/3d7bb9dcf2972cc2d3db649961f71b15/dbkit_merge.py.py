from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dbkit_Merge_Py_V0_1_0 = CommandToolBuilder(tool="dbkit_merge.py", base_command=["dbkit_merge.py"], inputs=[ToolInput(tag="in_first_index", input_type=File(optional=True), prefix="--firstindex", doc=InputDocumentation(doc="First Index file")), ToolInput(tag="in_first_data", input_type=File(optional=True), prefix="--firstdata", doc=InputDocumentation(doc="First Data file")), ToolInput(tag="in_second_index", input_type=File(optional=True), prefix="--secondindex", doc=InputDocumentation(doc="Second Index file")), ToolInput(tag="in_second_data", input_type=File(optional=True), prefix="--seconddata", doc=InputDocumentation(doc="Second Data file")), ToolInput(tag="in_output_index", input_type=File(optional=True), prefix="--outputindex", doc=InputDocumentation(doc="Output Index file")), ToolInput(tag="in_output_database", input_type=File(optional=True), prefix="--outputdatabase", doc=InputDocumentation(doc="Output Data file")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file"))], outputs=[ToolOutput(tag="out_output_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_index", type_hint=File()), doc=OutputDocumentation(doc="Output Index file")), ToolOutput(tag="out_output_database", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_database", type_hint=File()), doc=OutputDocumentation(doc="Output Data file"))], container="quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbkit_Merge_Py_V0_1_0().translate("wdl")

