from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Int

Poppunk_References_V0_1_0 = CommandToolBuilder(tool="poppunk_references", base_command=["poppunk_references"], inputs=[ToolInput(tag="in_network", input_type=File(optional=True), prefix="--network", doc=InputDocumentation(doc="gpickle file of network (required)")), ToolInput(tag="in_distances", input_type=String(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle of pre-calculated distances\n(required)")), ToolInput(tag="in_ref_db", input_type=String(optional=True), prefix="--ref-db", doc=InputDocumentation(doc="Location of reference db, if resketching")), ToolInput(tag="in_model", input_type=Directory(optional=True), prefix="--model", doc=InputDocumentation(doc="Directory containing model fit. Will be copied to new")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix for output files (required)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use [default = 1]")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="--clusters CLUSTERS   Specify a different clustering (e.g. core/accessory)"))], outputs=[], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_References_V0_1_0().translate("wdl")

