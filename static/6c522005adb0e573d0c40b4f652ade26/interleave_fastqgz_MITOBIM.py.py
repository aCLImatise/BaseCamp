from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Interleave_Fastqgz_Mitobim_Py_V0_1_0 = CommandToolBuilder(tool="interleave_fastqgz_MITOBIM.py", base_command=["interleave-fastqgz-MITOBIM.py"], inputs=[ToolInput(tag="in_interleave_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file_one", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mitobim:1.9.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interleave_Fastqgz_Mitobim_Py_V0_1_0().translate("wdl")

