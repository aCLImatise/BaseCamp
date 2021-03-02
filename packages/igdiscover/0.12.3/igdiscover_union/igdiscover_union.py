from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Igdiscover_Union_V0_1_0 = CommandToolBuilder(tool="igdiscover_union", base_command=["igdiscover", "union"], inputs=[ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Union_V0_1_0().translate("wdl", allow_empty_container=True)

