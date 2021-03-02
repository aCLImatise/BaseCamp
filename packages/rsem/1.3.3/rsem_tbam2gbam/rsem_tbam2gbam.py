from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Rsem_Tbam2Gbam_V0_1_0 = CommandToolBuilder(tool="rsem_tbam2gbam", base_command=["rsem-tbam2gbam"], inputs=[ToolInput(tag="in_p", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_unsorted_transcript_bam_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_bam_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Tbam2Gbam_V0_1_0().translate("wdl", allow_empty_container=True)

