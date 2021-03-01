from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dv_Call_Variants_Py_V0_1_0 = CommandToolBuilder(tool="dv_call_variants.py", base_command=["dv_call_variants.py"], inputs=[ToolInput(tag="in_examples", input_type=Boolean(optional=True), prefix="--examples", doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="")), ToolInput(tag="in_cores", input_type=String(optional=True), prefix="--cores", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dv_Call_Variants_Py_V0_1_0().translate("wdl", allow_empty_container=True)

