from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Esl_Mask_Maskfile_V0_1_0 = CommandToolBuilder(tool="esl_mask_maskfile", base_command=["esl-mask", "maskfile"], inputs=[ToolInput(tag="in_esl_mask", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Mask_Maskfile_V0_1_0().translate("wdl")

