from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Basenji_Sad_Norm_Py_V0_1_0 = CommandToolBuilder(tool="basenji_sad_norm.py", base_command=["basenji_sad_norm.py"], inputs=[ToolInput(tag="in_number_snps_sample", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Number of SNPs to sample for fit [Default: 100000]")), ToolInput(tag="in_arg", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Sad_Norm_Py_V0_1_0().translate("wdl")

