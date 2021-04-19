from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Utils_Cmp_V0_1_0 = CommandToolBuilder(tool="parsec_utils_cmp", base_command=["parsec", "utils", "cmp"], inputs=[ToolInput(tag="in_method", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cmp_with", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Utils_Cmp_V0_1_0().translate("wdl")

