from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Txt2Mzml_V0_1_0 = CommandToolBuilder(tool="txt2mzml", base_command=["txt2mzml"], inputs=[ToolInput(tag="in_file_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_out", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Txt2Mzml_V0_1_0().translate("wdl")

