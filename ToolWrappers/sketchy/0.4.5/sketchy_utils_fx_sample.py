from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Sketchy_Utils_Fx_Sample_V0_1_0 = CommandToolBuilder(tool="sketchy_utils_fx_sample", base_command=["sketchy", "utils", "fx-sample"], inputs=[ToolInput(tag="in_fast_x", input_type=File(optional=True), prefix="--fastx", doc=InputDocumentation(doc="Path to Fast{a,q} input file.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output to Fast{a,q} file. Default stdout [-]")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample size in number of reads [1000].")), ToolInput(tag="in_replacement", input_type=Boolean(optional=True), prefix="--replacement", doc=InputDocumentation(doc="Sample with replacement [false].")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="Seed for sampling function [none]."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output to Fast{a,q} file. Default stdout [-]"))], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Utils_Fx_Sample_V0_1_0().translate("wdl")

