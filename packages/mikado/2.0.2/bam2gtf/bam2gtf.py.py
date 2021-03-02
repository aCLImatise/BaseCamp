from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam2Gtf_Py_V0_1_0 = CommandToolBuilder(tool="bam2gtf.py", base_command=["bam2gtf.py"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_gtf", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Gtf_Py_V0_1_0().translate("wdl")

