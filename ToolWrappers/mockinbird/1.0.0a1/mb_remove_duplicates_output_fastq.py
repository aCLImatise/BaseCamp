from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mb_Remove_Duplicates_Output_Fastq_V0_1_0 = CommandToolBuilder(tool="mb_remove_duplicates_output_fastq", base_command=["mb-remove-duplicates", "output_fastq"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_remove_duplicates", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_fast_q", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_fast_q", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Remove_Duplicates_Output_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

