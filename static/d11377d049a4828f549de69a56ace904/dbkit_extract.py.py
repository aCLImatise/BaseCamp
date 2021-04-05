from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Dbkit_Extract_Py_V0_1_0 = CommandToolBuilder(tool="dbkit_extract.py", base_command=["dbkit_extract.py"], inputs=[ToolInput(tag="in_list", input_type=String(optional=True), prefix="--list", doc=InputDocumentation(doc="List of entries to be extracted")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Database Index file (ffindex)")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Database Data file (ffdata)")), ToolInput(tag="in_output_index", input_type=File(optional=True), prefix="--outputindex", doc=InputDocumentation(doc="Output Index file")), ToolInput(tag="in_output_database", input_type=File(optional=True), prefix="--outputdatabase", doc=InputDocumentation(doc="Output Data file")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log file"))], outputs=[ToolOutput(tag="out_output_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_index", type_hint=File()), doc=OutputDocumentation(doc="Output Index file")), ToolOutput(tag="out_output_database", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_database", type_hint=File()), doc=OutputDocumentation(doc="Output Data file"))], container="quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbkit_Extract_Py_V0_1_0().translate("wdl")

