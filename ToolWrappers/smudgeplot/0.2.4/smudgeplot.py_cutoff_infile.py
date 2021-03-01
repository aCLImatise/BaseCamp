from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Smudgeplot_Py_Cutoff_Infile_V0_1_0 = CommandToolBuilder(tool="smudgeplot.py_cutoff_infile", base_command=["smudgeplot.py", "cutoff", "infile"], inputs=[ToolInput(tag="in_boundary", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smudgeplot_Py_Cutoff_Infile_V0_1_0().translate("wdl")

