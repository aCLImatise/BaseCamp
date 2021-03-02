from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Hichyperoptdetectloops_V0_1_0 = CommandToolBuilder(tool="hicHyperoptDetectLoops", base_command=["hicHyperoptDetectLoops"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The matrix to compute the loops on.")), ToolInput(tag="in_protein_file", input_type=File(optional=True), prefix="--proteinFile", doc=InputDocumentation(doc="The protein file to validate the detected loops")), ToolInput(tag="in_maximum_number_of_loops", input_type=Int(optional=True), prefix="--maximumNumberOfLoops", doc=InputDocumentation(doc="The maximum number of loops that should be used for\noptimization computation.")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="--outputFileName", doc=InputDocumentation(doc="File names for the result of the optimization\n(Default: hyperopt_result.txt).")), ToolInput(tag="in_resolution", input_type=Int(optional=True), prefix="--resolution", doc=InputDocumentation(doc="Resolution of matrix (Default: 10000).")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (uses the python multiprocessing\nmodule) (Default: 4).")), ToolInput(tag="in_runs", input_type=Int(optional=True), prefix="--runs", doc=InputDocumentation(doc="Number of runs of hyperopt (Default: 100)."))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="File names for the result of the optimization\n(Default: hyperopt_result.txt)."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hichyperoptdetectloops_V0_1_0().translate("wdl")

