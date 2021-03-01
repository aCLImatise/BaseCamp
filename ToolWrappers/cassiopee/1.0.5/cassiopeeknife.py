from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cassiopeeknife_V0_1_0 = CommandToolBuilder(tool="cassiopeeknife", base_command=["cassiopeeknife"], inputs=[ToolInput(tag="in__sequence_convert", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": sequence to convert")), ToolInput(tag="in__output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output file")), ToolInput(tag="in__show_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": show version"))], outputs=[ToolOutput(tag="out__output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc=": output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cassiopeeknife_V0_1_0().translate("wdl", allow_empty_container=True)

