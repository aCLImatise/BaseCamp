from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Basenji_Fetch_Norm_Py_V0_1_0 = CommandToolBuilder(tool="basenji_fetch_norm.py", base_command=["basenji_fetch_norm.py"], inputs=[ToolInput(tag="in_sampled_snps_fit", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Sampled SNPs to fit distribution [Default: 131072]")), ToolInput(tag="in_sad_h_five_path", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Fetch_Norm_Py_V0_1_0().translate("wdl")

