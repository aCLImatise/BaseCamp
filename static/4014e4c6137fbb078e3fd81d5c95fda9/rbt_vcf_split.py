from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rbt_Vcf_Split_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_split", base_command=["rbt", "vcf-split"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_Split_V0_1_0().translate("wdl")

