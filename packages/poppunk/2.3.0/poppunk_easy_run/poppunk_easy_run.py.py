from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Poppunk_Easy_Run_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_easy_run.py", base_command=["poppunk_easy_run.py"], inputs=[ToolInput(tag="in_r_files", input_type=String(optional=True), prefix="--r-files", doc=InputDocumentation(doc="List of sequence names and files (as for --r-files")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix for output files")), ToolInput(tag="in_analysis_args", input_type=Int(optional=True), prefix="--analysis-args", doc=InputDocumentation(doc="Other arguments to pass to poppunk. e.g. '--min-k 13\n--max-k 29'")), ToolInput(tag="in_viz", input_type=Boolean(optional=True), prefix="--viz", doc=InputDocumentation(doc="Run visualisation of output")), ToolInput(tag="in_viz_args", input_type=String(optional=True), prefix="--viz-args", doc=InputDocumentation(doc="Options to use for visualisation")), ToolInput(tag="in_pop_punk_exe", input_type=String(optional=True), prefix="--poppunk-exe", doc=InputDocumentation(doc="Location of poppunk executable. Use 'python poppunk-\nrunner.py' to run from source tree")), ToolInput(tag="in_viz_exe", input_type=String(optional=True), prefix="--viz-exe", doc=InputDocumentation(doc="Location of poppunk_visualisation executable")), ToolInput(tag="in_easy_run", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/poppunk:2.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Easy_Run_Py_V0_1_0().translate("wdl")

