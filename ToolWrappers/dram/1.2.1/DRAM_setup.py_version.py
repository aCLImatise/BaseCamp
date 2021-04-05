from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dram_Setup_Py_Version_V0_1_0 = CommandToolBuilder(tool="DRAM_setup.py_version", base_command=["DRAM-setup.py", "version"], inputs=[ToolInput(tag="in_dram_setup_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dram:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Setup_Py_Version_V0_1_0().translate("wdl")

