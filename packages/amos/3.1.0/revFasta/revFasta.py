from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Revfasta_V0_1_0 = CommandToolBuilder(tool="revFasta", base_command=["revFasta"], inputs=[ToolInput(tag="in_reverse_complement_d", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Reverse complement the specified id only"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Revfasta_V0_1_0().translate("wdl", allow_empty_container=True)

