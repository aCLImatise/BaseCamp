from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Vcfanno_V0_1_0 = CommandToolBuilder(tool="vcfanno", base_command=["vcfanno"], inputs=[ToolInput(tag="in_base_path", input_type=File(optional=True), prefix="-base-path", doc=InputDocumentation(doc="optional base-path to prepend to annotation files in the config")), ToolInput(tag="in_ends", input_type=Boolean(optional=True), prefix="-ends", doc=InputDocumentation(doc="annotate the start and end as well as the interval itself.")), ToolInput(tag="in_lua", input_type=File(optional=True), prefix="-lua", doc=InputDocumentation(doc="optional path to a file containing custom javascript functions to be used as ops")), ToolInput(tag="in_number_use_default", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="number of processes to use. (default 2)")), ToolInput(tag="in_permissive_overlap", input_type=Boolean(optional=True), prefix="-permissive-overlap", doc=InputDocumentation(doc="annotate with an overlapping variant even it doesn't share the same ref and alt alleles. Default is to require exact match between variants.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfanno_V0_1_0().translate("wdl", allow_empty_container=True)

