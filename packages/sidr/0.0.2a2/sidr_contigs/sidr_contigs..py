from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sidr_Contigs__V0_1_0 = CommandToolBuilder(tool="sidr_contigs.", base_command=["sidr", "contigs."], inputs=[ToolInput(tag="in_sid_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sidr_Contigs__V0_1_0().translate("wdl")

