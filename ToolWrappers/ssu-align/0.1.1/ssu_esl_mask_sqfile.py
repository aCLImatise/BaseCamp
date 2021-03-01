from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ssu_Esl_Mask_Sqfile_V0_1_0 = CommandToolBuilder(tool="ssu_esl_mask_sqfile", base_command=["ssu-esl-mask", "sqfile"], inputs=[ToolInput(tag="in_mask_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Mask_Sqfile_V0_1_0().translate("wdl", allow_empty_container=True)

