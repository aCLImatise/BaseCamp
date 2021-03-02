from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Extract_Markers_Py_V0_1_0 = CommandToolBuilder(tool="extract_markers.py", base_command=["extract_markers.py"], inputs=[ToolInput(tag="in_database", input_type=String(optional=True), prefix="--database", doc=InputDocumentation(doc="The input MetaPhlAn dtabase")), ToolInput(tag="in_clade", input_type=String(optional=True), prefix="--clade", doc=InputDocumentation(doc="The clades to investigate")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="The output directory\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="The output directory\n"))], container="quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Markers_Py_V0_1_0().translate("wdl")

