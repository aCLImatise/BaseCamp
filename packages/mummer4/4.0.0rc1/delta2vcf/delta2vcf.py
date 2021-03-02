from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Delta2Vcf_V0_1_0 = CommandToolBuilder(tool="delta2vcf", base_command=["delta2vcf"], inputs=[ToolInput(tag="in_file_dot_delta", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delta2Vcf_V0_1_0().translate("wdl")

