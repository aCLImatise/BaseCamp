from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Smudgeplot_Py_Cutoff_Boundary_V0_1_0 = CommandToolBuilder(tool="smudgeplot.py_cutoff_boundary", base_command=["smudgeplot.py", "cutoff", "boundary"], inputs=[ToolInput(tag="in_smudge_plot", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_boundary", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/smudgeplot_rn:0.2.5_RN--py39r40h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smudgeplot_Py_Cutoff_Boundary_V0_1_0().translate("wdl")

