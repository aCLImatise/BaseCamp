from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Maf_Mask_Cpg_Py_V0_1_0 = CommandToolBuilder(tool="maf_mask_cpg.py", base_command=["maf_mask_cpg.py"], inputs=[ToolInput(tag="in_mask", input_type=String(optional=True), prefix="--mask", doc=InputDocumentation(doc="Character to use as mask ('?' is default)")), ToolInput(tag="in_restricted", input_type=Boolean(optional=True), prefix="--restricted", doc=InputDocumentation(doc="Use restricted definition of CpGs")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Mask_Cpg_Py_V0_1_0().translate("wdl")

