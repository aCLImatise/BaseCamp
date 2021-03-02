from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Deletedatmafiles_Py_V0_1_0 = CommandToolBuilder(tool="deleteDATMAfiles.py", base_command=["deleteDATMAfiles.py"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="configuration file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deletedatmafiles_Py_V0_1_0().translate("wdl", allow_empty_container=True)

