from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dam2Fasta_V0_1_0 = CommandToolBuilder(tool="DAM2fasta", base_command=["DAM2fasta"], inputs=[ToolInput(tag="in_vu", input_type=Boolean(optional=True), prefix="-vU", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dam2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

