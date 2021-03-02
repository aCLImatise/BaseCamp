from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maskprimers_Py_Mask_Fail_V0_1_0 = CommandToolBuilder(tool="MaskPrimers.py_mask_fail", base_command=["MaskPrimers.py", "mask-fail"], inputs=[ToolInput(tag="in_mask_primers_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maskprimers_Py_Mask_Fail_V0_1_0().translate("wdl")

