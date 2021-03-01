from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Seq_Seq_Pan_Maf_V0_1_0 = CommandToolBuilder(tool="seq_seq_pan_maf", base_command=["seq-seq-pan", "maf"], inputs=[ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_x", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_seq_pando_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seq-seq-pan:1.1.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_Seq_Pan_Maf_V0_1_0().translate("wdl")

