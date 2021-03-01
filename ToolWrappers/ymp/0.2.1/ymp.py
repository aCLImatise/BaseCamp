from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ymp_V0_1_0 = CommandToolBuilder(tool="ymp", base_command=["ymp"], inputs=[ToolInput(tag="in_pdb", input_type=Boolean(optional=True), prefix="--pdb", doc=InputDocumentation(doc="Drop into debugger on uncaught exception")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Decrease log verbosity")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase log verbosity")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Specify a log file")), ToolInput(tag="in_install_completion", input_type=Boolean(optional=True), prefix="--install-completion", doc=InputDocumentation(doc="Install command completion for the current shell. Make\nsure to have psutil installed.")), ToolInput(tag="in_profile", input_type=File(optional=True), prefix="--profile", doc=InputDocumentation(doc="Profile execution time using Yappi")), ToolInput(tag="in_env", input_type=String(), position=0, doc=InputDocumentation(doc="Manipulate conda software environments These commands allow...")), ToolInput(tag="in_in_it", input_type=String(), position=1, doc=InputDocumentation(doc="Initialize YMP workspace")), ToolInput(tag="in_make", input_type=String(), position=2, doc=InputDocumentation(doc="Build target(s) locally")), ToolInput(tag="in_show", input_type=String(), position=3, doc=InputDocumentation(doc="Show configuration properties")), ToolInput(tag="in_stage", input_type=String(), position=4, doc=InputDocumentation(doc="Manipulate YMP stages")), ToolInput(tag="in_submit", input_type=String(), position=5, doc=InputDocumentation(doc="Build target(s) on cluster The parameters for cluster execution..."))], outputs=[], container="quay.io/biocontainers/ymp:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ymp_V0_1_0().translate("wdl")

