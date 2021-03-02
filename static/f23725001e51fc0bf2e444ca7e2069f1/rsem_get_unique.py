from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Get_Unique_V0_1_0 = CommandToolBuilder(tool="rsem_get_unique", base_command=["rsem-get-unique"], inputs=[ToolInput(tag="in_number_of_threads", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_unsorted_transcript_bam_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Get_Unique_V0_1_0().translate("wdl", allow_empty_container=True)

