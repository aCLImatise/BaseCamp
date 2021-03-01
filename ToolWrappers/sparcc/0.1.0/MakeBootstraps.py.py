from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Makebootstraps_Py_V0_1_0 = CommandToolBuilder(tool="MakeBootstraps.py", base_command=["MakeBootstraps.py"], inputs=[ToolInput(tag="in_number_create_default", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Number of simulated datasets to create (100 default).")), ToolInput(tag="in_template", input_type=Int(optional=True), prefix="--template", doc=InputDocumentation(doc="The template for the permuted data file names. Should\nnot include the path, which is specified using the -p\noption. The iteration number is indicated with a '#'.\nFor example: 'permuted/counts.permuted_#.txt'If not\nprovided a '.permuted_#.txt' suffix will be added to\nthe counts file name.")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="The path to which permuted data will be written. If\nnot provided files will be written to the cwd.\n")), ToolInput(tag="in_make", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_counts_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_simulated", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_datasets", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_used", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_get", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_pseudo", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_values_dot", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path", type_hint=File()), doc=OutputDocumentation(doc="The path to which permuted data will be written. If\nnot provided files will be written to the cwd.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makebootstraps_Py_V0_1_0().translate("wdl", allow_empty_container=True)

