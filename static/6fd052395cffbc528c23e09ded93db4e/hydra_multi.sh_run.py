from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Hydra_Multi_Sh_Run_V0_1_0 = CommandToolBuilder(tool="hydra_multi.sh_run", base_command=["hydra-multi.sh", "run"], inputs=[ToolInput(tag="in_number_threads_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads to use. [Default: 2]")), ToolInput(tag="in_punt_parameter_breakpoint", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="The punt parameter for breakpoint assembly.\nThis value will be multiplied by the number of datasets in the analysis.\nRecommended: The  average read coverage of all datasets analyzed multipled by 5.\nExample: 3 Datasets average 30x, the input value is 150.\nThe default assumes 10x datasets [Default: 50]")), ToolInput(tag="in_stub_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="The stub for the output file names")), ToolInput(tag="in_stub_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_stub_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_stub_output_file", type_hint=File()), doc=OutputDocumentation(doc="The stub for the output file names"))], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hydra_Multi_Sh_Run_V0_1_0().translate("wdl")

