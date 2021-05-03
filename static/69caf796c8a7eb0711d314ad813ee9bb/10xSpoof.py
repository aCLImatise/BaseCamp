from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

10Xspoof_V0_1_0 = CommandToolBuilder(tool="10xSpoof", base_command=["10xSpoof"], inputs=[ToolInput(tag="in_fast_q_format", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samhaplotag:0.0.3--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    10Xspoof_V0_1_0().translate("wdl")

