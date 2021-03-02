from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Sam_Validator_V0_1_0 = CommandToolBuilder(tool="rsem_sam_validator", base_command=["rsem-sam-validator"], inputs=[ToolInput(tag="in_input_dots_am_slash_input_dot_bam_slash_input_dot_cram", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Sam_Validator_V0_1_0().translate("wdl", allow_empty_container=True)

