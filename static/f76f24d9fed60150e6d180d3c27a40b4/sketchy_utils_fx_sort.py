from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sketchy_Utils_Fx_Sort_V0_1_0 = CommandToolBuilder(tool="sketchy_utils_fx_sort", base_command=["sketchy", "utils", "fx-sort"], inputs=[ToolInput(tag="in_fast_x", input_type=File(optional=True), prefix="--fastx", doc=InputDocumentation(doc="Path to Fast{a,q} input file.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output to Fast{a,q} file. Default stdout [-]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output to Fast{a,q} file. Default stdout [-]"))], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Utils_Fx_Sort_V0_1_0().translate("wdl")

