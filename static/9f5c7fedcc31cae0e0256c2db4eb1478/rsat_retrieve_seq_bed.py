from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Retrieve_Seq_Bed_V0_1_0 = CommandToolBuilder(tool="rsat_retrieve_seq_bed", base_command=["rsat", "retrieve-seq-bed"], inputs=[ToolInput(tag="in_retrieve_seq_bed", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_genome", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Retrieve_Seq_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

