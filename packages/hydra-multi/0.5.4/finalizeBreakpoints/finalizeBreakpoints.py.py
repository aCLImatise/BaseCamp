from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Finalizebreakpoints_Py_V0_1_0 = CommandToolBuilder(tool="finalizeBreakpoints.py", base_command=["finalizeBreakpoints.py"], inputs=[ToolInput(tag="in_master_assembled_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Master assembled cluster file")), ToolInput(tag="in_stub_output_files", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Stub for output files")), ToolInput(tag="in_amount_use_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="The amount of memory to use for UNIX sort.  Default = 2G.  See\n'man sort' for valid values.")), ToolInput(tag="in_maximum_intrachromosomal_distance", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Maximum intrachromosomal distance allowed before a variant is\nconsidered to be between unlinked DNA segments.\n"))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Finalizebreakpoints_Py_V0_1_0().translate("wdl")

