from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Easypqp_Reduce_V0_1_0 = CommandToolBuilder(tool="easypqp_reduce", base_command=["easypqp", "reduce"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="Input PQP file.  [required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output PQP file.  [required]")), ToolInput(tag="in_bins", input_type=Int(optional=True), prefix="--bins", doc=InputDocumentation(doc="Number of bins to fill along gradient.  [default: 10]")), ToolInput(tag="in_peptides", input_type=Int(optional=True), prefix="--peptides", doc=InputDocumentation(doc="Number of peptides to sample.  [default: 5]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output PQP file.  [required]"))], container="quay.io/biocontainers/easypqp:0.1.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easypqp_Reduce_V0_1_0().translate("wdl")

