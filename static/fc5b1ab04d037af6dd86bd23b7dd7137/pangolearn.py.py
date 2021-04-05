from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pangolearn_Py_V0_1_0 = CommandToolBuilder(tool="pangolearn.py", base_command=["pangolearn.py"], inputs=[ToolInput(tag="in_header_file", input_type=File(optional=True), prefix="--header-file", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pangolin:2.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pangolearn_Py_V0_1_0().translate("wdl")

