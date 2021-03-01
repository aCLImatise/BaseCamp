from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Qpff3Base_V0_1_0 = CommandToolBuilder(tool="qpff3base", base_command=["qpff3base"], inputs=[ToolInput(tag="in_use_nam_sa", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="... use <nam> sa fixname.")), ToolInput(tag="in_use_va_base", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="... use <va> as base value.")), ToolInput(tag="in_use_parameters_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="... use parameters from <file> .")), ToolInput(tag="in_use_val_seed", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="... use <val> as seed.")), ToolInput(tag="in_use_val_lambda", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="... use <val> as lambda scale.")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... print version and exit.")), ToolInput(tag="in_toggle_verbose_mode", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="... toggle verbose mode ON.")), ToolInput(tag="in_toggle_doanalysis_on", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="... toggle doAnalysis ON.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qpff3Base_V0_1_0().translate("wdl")

