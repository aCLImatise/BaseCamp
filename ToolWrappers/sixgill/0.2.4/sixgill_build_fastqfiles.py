from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sixgill_Build_Fastqfiles_V0_1_0 = CommandToolBuilder(tool="sixgill_build_fastqfiles", base_command=["sixgill_build", "fastqfiles"], inputs=[ToolInput(tag="in_minlength", input_type=String(optional=True), prefix="--minlength", doc=InputDocumentation(doc="")), ToolInput(tag="in_six_gill_build", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sixgill_Build_Fastqfiles_V0_1_0().translate("wdl", allow_empty_container=True)

