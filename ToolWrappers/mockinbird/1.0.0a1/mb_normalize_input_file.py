from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Normalize_Input_File_V0_1_0 = CommandToolBuilder(tool="mb_normalize_input_file", base_command=["mb-normalize", "input_file"], inputs=[ToolInput(tag="in_mut_snp_ratio", input_type=String(optional=True), prefix="--mut_snp_ratio", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_normalize", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Normalize_Input_File_V0_1_0().translate("wdl", allow_empty_container=True)

