from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fq2Fa_Py_V0_1_0 = CommandToolBuilder(tool="fq2fa.py", base_command=["fq2fa.py"], inputs=[ToolInput(tag="in_convert", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_filename", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fq2Fa_Py_V0_1_0().translate("wdl")

