from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smudgeplot_Py_Hetkmers_Infile_V0_1_0 = CommandToolBuilder(tool="smudgeplot.py_hetkmers_infile", base_command=["smudgeplot.py", "hetkmers", "infile"], inputs=[ToolInput(tag="in_middle", input_type=Boolean(optional=True), prefix="--middle", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smudgeplot_Py_Hetkmers_Infile_V0_1_0().translate("wdl", allow_empty_container=True)

