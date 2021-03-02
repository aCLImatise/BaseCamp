from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Cgcfinder_Py_V0_1_0 = CommandToolBuilder(tool="CGCFinder.py", base_command=["CGCFinder.py"], inputs=[ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="The distance allowed between two signature genes")), ToolInput(tag="in_sig_genes", input_type=Boolean(optional=True), prefix="--siggenes", doc=InputDocumentation(doc="{all,tp,tf,stp,tp+tf,tp+stp,tf+stp}, -s {all,tp,tf,stp,tp+tf,tp+stp,tf+stp}\nSignature genes types required. all=CAZymes,TC,TF;\ntp=CAZymes,TC; tf=CAZymes,TF")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name\n"))], container="quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgcfinder_Py_V0_1_0().translate("wdl")

