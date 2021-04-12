from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Generate_Plot_Py_V0_1_0 = CommandToolBuilder(tool="generate_plot.py", base_command=["generate_plot.py"], inputs=[ToolInput(tag="in_define_location_your", input_type=File(optional=True), prefix="--working_directory", doc=InputDocumentation(doc="Define the location of your working directory")), ToolInput(tag="in_run_type", input_type=String(optional=True), prefix="--run_type", doc=InputDocumentation(doc="type of summary to use, `generic` or `specific`")), ToolInput(tag="in_no_r", input_type=Boolean(optional=True), prefix="--no_r", doc=InputDocumentation(doc="To avoid to run R. It will just create the R script file in the working directory")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Disable the info logs, displays only errors")), ToolInput(tag="in_var_4", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_other", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/busco:5.1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Plot_Py_V0_1_0().translate("wdl")

