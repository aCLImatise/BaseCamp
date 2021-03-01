from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Summarizemerge_Sh_V0_1_0 = CommandToolBuilder(tool="summarizemerge.sh", base_command=["summarizemerge.sh"], inputs=[ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarizemerge_Sh_V0_1_0().translate("wdl")

