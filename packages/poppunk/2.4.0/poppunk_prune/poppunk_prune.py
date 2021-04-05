from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Poppunk_Prune_V0_1_0 = CommandToolBuilder(tool="poppunk_prune", base_command=["poppunk_prune"], inputs=[ToolInput(tag="in_remove", input_type=File(optional=True), prefix="--remove", doc=InputDocumentation(doc="File listing sequences to remove (required)")), ToolInput(tag="in_distances", input_type=String(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle of pre-calculated distances\n(required)")), ToolInput(tag="in_ref_db", input_type=String(optional=True), prefix="--ref-db", doc=InputDocumentation(doc="Location of reference db, if resketching")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix for output files (required)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use [default = 1]"))], outputs=[], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Prune_V0_1_0().translate("wdl")

