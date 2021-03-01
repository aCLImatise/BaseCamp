from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Treemaker_V0_1_0 = CommandToolBuilder(tool="treemaker", base_command=["treemaker"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="output mode: nexus or newick")), ToolInput(tag="in_labels", input_type=Boolean(optional=True), prefix="--labels", doc=InputDocumentation(doc="show node labels")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="inputfile"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treemaker_V0_1_0().translate("wdl", allow_empty_container=True)

