from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Downpore_V0_1_0 = CommandToolBuilder(tool="downpore", base_command=["downpore"], inputs=[ToolInput(tag="in_overlap", input_type=String(), position=0, doc=InputDocumentation(doc="map")), ToolInput(tag="in_trim", input_type=String(), position=1, doc=InputDocumentation(doc="subseq")), ToolInput(tag="in_consensus", input_type=String(), position=2, doc=InputDocumentation(doc="align")), ToolInput(tag="in_correct", input_type=String(), position=3, doc=InputDocumentation(doc="kmers"))], outputs=[], container="quay.io/biocontainers/downpore:0.3.4--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Downpore_V0_1_0().translate("wdl")

