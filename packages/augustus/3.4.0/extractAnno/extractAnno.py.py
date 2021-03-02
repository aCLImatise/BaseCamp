from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String

Extractanno_Py_V0_1_0 = CommandToolBuilder(tool="extractAnno.py", base_command=["extractAnno.py"], inputs=[ToolInput(tag="in_chunks", input_type=Array(t=String(), optional=True), prefix="--chunks", doc=InputDocumentation(doc="a list of one or more positive integers indicating the\nchunk/s for which we want to build a minimal\nannotation from given Ensembl.\n"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractanno_Py_V0_1_0().translate("wdl")

