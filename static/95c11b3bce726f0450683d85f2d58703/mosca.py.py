from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mosca_Py_V0_1_0 = CommandToolBuilder(tool="mosca.py", base_command=["mosca.py"], inputs=[ToolInput(tag="in_snake_file", input_type=File(optional=True), prefix="--snakefile", doc=InputDocumentation(doc="Snakefile file")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--configfile", doc=InputDocumentation(doc="Configuration file for MOSCA (JSON or YAML)")), ToolInput(tag="in_unlock", input_type=Boolean(optional=True), prefix="--unlock", doc=InputDocumentation(doc="If user forced termination of workflow, this might be")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_required", input_type=String(), position=0, doc=InputDocumentation(doc="-v, --version         show program's version number and exit"))], outputs=[], container="quay.io/biocontainers/mosca:1.3.4--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mosca_Py_V0_1_0().translate("wdl")

