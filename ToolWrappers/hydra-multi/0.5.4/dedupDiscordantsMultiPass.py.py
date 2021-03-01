from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Dedupdiscordantsmultipass_Py_V0_1_0 = CommandToolBuilder(tool="dedupDiscordantsMultiPass.py", base_command=["dedupDiscordantsMultiPass.py"], inputs=[ToolInput(tag="in_bedpe_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="BEDPE input file")), ToolInput(tag="in_amount_slop_bp", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="The amount of slop, in bp, allowed for duplicates to be marked")), ToolInput(tag="in_maximum_number_mapping", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="The maximum number of mapping combinations allowed before a\nduplicate ID has _all_ of its mappings removed")), ToolInput(tag="in_mem", input_type=Int(optional=True), prefix="--mem", doc=InputDocumentation(doc="The amount of memory to use for UNIX sort.  Default = 2G.  See\n'man sort' for valid values.")), ToolInput(tag="in_dedup__", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Dedup if __either__ end shares a start position (within slop)\nin common.\n"))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dedupdiscordantsmultipass_Py_V0_1_0().translate("wdl")

