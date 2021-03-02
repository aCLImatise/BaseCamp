from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Instrain_Other_V0_1_0 = CommandToolBuilder(tool="inStrain_other", base_command=["inStrain", "other"], inputs=[ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Make extra debugging output (default: False)")), ToolInput(tag="in_old_is", input_type=String(optional=True), prefix="--old_IS", doc=InputDocumentation(doc="Convert an old inStrain version object to the newer\nversion. (default: None)")), ToolInput(tag="in_run_statistics", input_type=String(optional=True), prefix="--run_statistics", doc=InputDocumentation(doc="Generate runtime reports for an inStrain run.\n(default: None)\n"))], outputs=[], container="quay.io/biocontainers/instrain:1.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Instrain_Other_V0_1_0().translate("wdl")

