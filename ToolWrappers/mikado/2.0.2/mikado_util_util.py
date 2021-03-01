from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mikado_Util_Util_V0_1_0 = CommandToolBuilder(tool="mikado_util_util", base_command=["mikado", "util", "util"], inputs=[ToolInput(tag="in_mikado", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_util", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mikado_Util_Util_V0_1_0().translate("wdl")

