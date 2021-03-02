from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Debarcer_Merge_V0_1_0 = CommandToolBuilder(tool="debarcer_merge", base_command=["debarcer", "merge"], inputs=[ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--Directory", doc=InputDocumentation(doc="Directory containing files to be merged")), ToolInput(tag="in_datatype", input_type=String(optional=True), prefix="--DataType", doc=InputDocumentation(doc="Type of files to be merged\n"))], outputs=[], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Merge_V0_1_0().translate("wdl")

