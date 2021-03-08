from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pyprophet_Reduce_V0_1_0 = CommandToolBuilder(tool="pyprophet_reduce", base_command=["pyprophet", "reduce"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="Scored PyProphet input file.  [required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Reduced OSWR output file."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Reduced OSWR output file."))], container="quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Reduce_V0_1_0().translate("wdl")

