from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Qp3Pop_V0_1_0 = CommandToolBuilder(tool="qp3Pop", base_command=["qp3Pop"], inputs=[ToolInput(tag="in_use_nam_name", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="... use <nam> as snp details name.")), ToolInput(tag="in_use_parameters_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="... use parameters from <file> .")), ToolInput(tag="in_locount_n_popfilename", input_type=String(optional=True), prefix="-L", doc=InputDocumentation(doc="... locount -n popfilename.")), ToolInput(tag="in__hicount_popfilename", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="... hicount -n popfilename.")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... print version and exit.")), ToolInput(tag="in_toggle_verbose_mode", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="... toggle verbose mode ON.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qp3Pop_V0_1_0().translate("wdl")

