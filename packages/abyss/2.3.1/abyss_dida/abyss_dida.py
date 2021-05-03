from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Abyss_Dida_V0_1_0 = CommandToolBuilder(tool="abyss_dida", base_command=["abyss-dida"], inputs=[ToolInput(tag="in_additional_command_line", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="additional command line opts for DIDA")), ToolInput(tag="in_number_of_threads", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_path_of_executable", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="path of 'mpirun' executable [mpirun]")), ToolInput(tag="in_number_ranks_dida", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="number of ranks in DIDA MPI job [3]")), ToolInput(tag="in_value_set_environment", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="=value  set environment variable for MPI job"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Dida_V0_1_0().translate("wdl")

