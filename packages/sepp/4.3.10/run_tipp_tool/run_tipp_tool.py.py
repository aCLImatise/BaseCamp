from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Run_Tipp_Tool_Py_V0_1_0 = CommandToolBuilder(tool="run_tipp_tool.py", base_command=["run_tipp_tool.py"], inputs=[ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="use GENE's reference package")), ToolInput(tag="in_action", input_type=String(optional=True), prefix="--action", doc=InputDocumentation(doc="Run ACTION")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="OUTPUT directory")), ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="threshold for classification\n")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="-i INPUT, --input INPUT"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="OUTPUT directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Tipp_Tool_Py_V0_1_0().translate("wdl", allow_empty_container=True)

