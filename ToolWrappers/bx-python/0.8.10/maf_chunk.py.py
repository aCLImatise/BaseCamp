from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Chunk_Py_V0_1_0 = CommandToolBuilder(tool="maf_chunk.py", base_command=["maf_chunk.py"], inputs=[ToolInput(tag="in_prob", input_type=String(optional=True), prefix="--prob", doc=InputDocumentation(doc="Probability of writing a given chunk")), ToolInput(tag="in_chunk_size", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Chunk_Py_V0_1_0().translate("wdl")

