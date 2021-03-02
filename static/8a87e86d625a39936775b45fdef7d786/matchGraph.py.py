from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Matchgraph_Py_V0_1_0 = CommandToolBuilder(tool="matchGraph.py", base_command=["matchGraph.py"], inputs=[ToolInput(tag="in_is_input_filename", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="is the input filename")), ToolInput(tag="in_is_output_filename", input_type=File(optional=True), prefix="-w", doc=InputDocumentation(doc="is the output filename")), ToolInput(tag="in_max_cardinality_matching", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="the max cardinality matching"))], outputs=[ToolOutput(tag="out_is_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_is_output_filename", type_hint=File()), doc=OutputDocumentation(doc="is the output filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matchgraph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

