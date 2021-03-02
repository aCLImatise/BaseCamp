from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int, Array

Deepac_Live_Test_V0_1_0 = CommandToolBuilder(tool="deepac_live_test", base_command=["deepac-live", "test"], inputs=[ToolInput(tag="in_command", input_type=String(optional=True), prefix="--command", doc=InputDocumentation(doc="DeePaC command to use (switches builtin models).")), ToolInput(tag="in_custom", input_type=Boolean(optional=True), prefix="--custom", doc=InputDocumentation(doc="Use a custom model.")), ToolInput(tag="in_model", input_type=File(optional=True), prefix="--model", doc=InputDocumentation(doc="Model to use. 'rapid', 'sensitive' or custom .h5 file.")), ToolInput(tag="in_n_cpus_rec", input_type=Int(optional=True), prefix="--n-cpus-rec", doc=InputDocumentation(doc="Number of cores used by the receiver. Default: all")), ToolInput(tag="in_gpus", input_type=Array(t=String(), optional=True), prefix="--gpus", doc=InputDocumentation(doc="GPU devices to use (comma-separated). Default: all")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Don't delete previous test output.")), ToolInput(tag="in_scale", input_type=Int(optional=True), prefix="--scale", doc=InputDocumentation(doc="Generate s*1024 reads for testing (Default: s=1).\n"))], outputs=[], container="quay.io/biocontainers/deepaclive:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Live_Test_V0_1_0().translate("wdl")

