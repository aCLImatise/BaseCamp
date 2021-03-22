from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Refgenie_Listr_V0_1_0 = CommandToolBuilder(tool="refgenie_listr", base_command=["refgenie", "listr"], inputs=[ToolInput(tag="in_genome_config", input_type=File(optional=True), prefix="--genome-config", doc=InputDocumentation(doc="Path to local genome configuration file. Optional if\nREFGENIE environment variable is set.")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="Whether the config file should not be locked for reading")), ToolInput(tag="in_reference_assembly_id", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[G ...], --genome [G ...]  Reference assembly ID, e.g. mm10.")), ToolInput(tag="in_var_3", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Listr_V0_1_0().translate("wdl")

