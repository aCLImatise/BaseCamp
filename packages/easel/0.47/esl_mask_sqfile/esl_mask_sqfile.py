from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Esl_Mask_Sqfile_V0_1_0 = CommandToolBuilder(tool="esl_mask_sqfile", base_command=["esl-mask", "sqfile"], inputs=[ToolInput(tag="in_mask_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Mask_Sqfile_V0_1_0().translate("wdl")

