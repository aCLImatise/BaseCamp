from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phispy_Py_Infile_V0_1_0 = CommandToolBuilder(tool="PhiSpy.py_infile", base_command=["PhiSpy.py", "infile"], inputs=[ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_phi_spy_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phispy_Py_Infile_V0_1_0().translate("wdl", allow_empty_container=True)

