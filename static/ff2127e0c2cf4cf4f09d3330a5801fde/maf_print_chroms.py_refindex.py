from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Print_Chroms_Py_Refindex_V0_1_0 = CommandToolBuilder(tool="maf_print_chroms.py_refindex", base_command=["maf_print_chroms.py", "refindex"], inputs=[ToolInput(tag="in_program_dot", input_type=String(), position=0, doc=InputDocumentation(doc="usage: /usr/local/bin/maf_print_chroms.py refindex [options]"))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Print_Chroms_Py_Refindex_V0_1_0().translate("wdl")

