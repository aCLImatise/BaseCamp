from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Unitem_Unique_V0_1_0 = CommandToolBuilder(tool="unitem_unique", base_command=["unitem", "unique"], inputs=[ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (all other files in directory are\nignored) (default: fna)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_bin_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing bins"))], outputs=[], container="quay.io/biocontainers/unitem:0.0.18--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unitem_Unique_V0_1_0().translate("wdl")

