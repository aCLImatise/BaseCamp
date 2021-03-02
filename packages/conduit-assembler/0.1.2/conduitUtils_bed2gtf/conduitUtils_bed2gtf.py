from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Conduitutils_Bed2Gtf_V0_1_0 = CommandToolBuilder(tool="conduitUtils_bed2gtf", base_command=["conduitUtils", "bed2gtf"], inputs=[ToolInput(tag="in_stranded", input_type=Boolean(optional=True), prefix="--stranded", doc=InputDocumentation(doc="Report gtf fields with strand information\n"))], outputs=[], container="quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conduitutils_Bed2Gtf_V0_1_0().translate("wdl")

