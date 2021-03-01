from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Haphpipe_Demo_V0_1_0 = CommandToolBuilder(tool="haphpipe_demo", base_command=["haphpipe_demo"], inputs=[ToolInput(tag="in_outdir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Demo_V0_1_0().translate("wdl")

