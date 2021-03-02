from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Phyluce_Genetrees_Reformat_Trees_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_reformat_trees", base_command=["phyluce_genetrees_reformat_trees"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The input trees directory")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output trees directory")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The tree file format")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The tree file format")), ToolInput(tag="in_do_not_preserve_spaces", input_type=String(optional=True), prefix="--do-not-preserve-spaces", doc=InputDocumentation(doc="Do not retain spaces in output names\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output trees directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Reformat_Trees_V0_1_0().translate("wdl", allow_empty_container=True)

