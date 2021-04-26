from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Tfr_Qc_Py_V0_1_0 = CommandToolBuilder(tool="tfr_qc.py", base_command=["tfr_qc.py"], inputs=[ToolInput(tag="in_number_parallel_use", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Number of parallel threads to use [Default: 16]")), ToolInput(tag="in_tfr_data_dir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tfr_Qc_Py_V0_1_0().translate("wdl")

