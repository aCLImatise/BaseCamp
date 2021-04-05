from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Spring_Cross_Py_V0_1_0 = CommandToolBuilder(tool="spring_cross.py", base_command=["spring_cross.py"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="PDB Database Index file (ffindex)")), ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="PDB Database files (ffdata)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Log File")), ToolInput(tag="in_zipped", input_type=String(optional=True), prefix="--zipped", doc=InputDocumentation(doc="Zipped extension in PDB Database\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container="quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spring_Cross_Py_V0_1_0().translate("wdl")

