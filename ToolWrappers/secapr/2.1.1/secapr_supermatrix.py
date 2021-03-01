from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Secapr_Supermatrix_V0_1_0 = CommandToolBuilder(tool="secapr_supermatrix", base_command=["secapr", "supermatrix"], inputs=[ToolInput(tag="in_sec_apr", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Supermatrix_V0_1_0().translate("wdl")

