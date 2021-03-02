from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float

Extend_Py_V0_1_0 = CommandToolBuilder(tool="extend.py", base_command=["extend.py"], inputs=[ToolInput(tag="in_input_tpr", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Input tpr")), ToolInput(tag="in_time", input_type=Int(optional=True), prefix="-time", doc=InputDocumentation(doc="Extend simulation time, default=10")), ToolInput(tag="in_dt", input_type=Float(optional=True), prefix="-dt", doc=InputDocumentation(doc="integration time step, default=0.005")), ToolInput(tag="in_nt", input_type=Int(optional=True), prefix="-nt", doc=InputDocumentation(doc="Total number of threads to start, default=0")), ToolInput(tag="in_nt_mpi", input_type=Int(optional=True), prefix="-ntmpi", doc=InputDocumentation(doc="Number of thread-MPI threads to start, default=0")), ToolInput(tag="in_gpu_id", input_type=String(optional=True), prefix="-gpu_id", doc=InputDocumentation(doc="List of GPU device id-s to use, default=''"))], outputs=[], container="quay.io/biocontainers/gromacs_py:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extend_Py_V0_1_0().translate("wdl")

