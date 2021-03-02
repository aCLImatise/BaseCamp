from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Changenewline_Pl_V0_1_0 = CommandToolBuilder(tool="changeNewLine.pl", base_command=["changeNewLine.pl"], inputs=[ToolInput(tag="in_do_prompt_overwriting", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Don't prompt before overwriting")), ToolInput(tag="in_interactive_prompt_overwrite", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Interactive, prompt before overwrite")), ToolInput(tag="in_overwrite_existing_file", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't overwrite an existing file")), ToolInput(tag="in_fin", input_type=Boolean(optional=True), prefix="-fin", doc=InputDocumentation(doc="")), ToolInput(tag="in_mv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_source", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dest", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Changenewline_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

