from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bamlibs_Py_V0_1_0 = CommandToolBuilder(tool="bamlibs.py", base_command=["bamlibs.py"], inputs=[ToolInput(tag="in_is_sam", input_type=Boolean(optional=True), prefix="--is_sam", doc=InputDocumentation(doc="input is SAM")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="SAM/BAM file to inject header lines into. If '-' or absent then defaults to stdin."))], outputs=[], container="quay.io/biocontainers/bamkit:16.07.26--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamlibs_Py_V0_1_0().translate("wdl")

