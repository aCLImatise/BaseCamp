from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Snpsift_Split_V0_1_0 = CommandToolBuilder(tool="SnpSift_split", base_command=["SnpSift", "split"], inputs=[ToolInput(tag="in_join_files_stdout", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc=": Join all files in command line (output = STDOUT).")), ToolInput(tag="in__split_lines", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": Split by 'num' lines.")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_default", input_type=String(), position=0, doc=InputDocumentation(doc=": Split by chromosome (one file per chromosome)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Split_V0_1_0().translate("wdl", allow_empty_container=True)

