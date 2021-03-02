from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Frgs2Clones_V0_1_0 = CommandToolBuilder(tool="frgs2clones", base_command=["frgs2clones"], inputs=[ToolInput(tag="in_read_fragments_gatekeeper", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="read fragments from this gatekeeper store")), ToolInput(tag="in_build_alignment_overlapping", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="build an alignment for overlapping fragments")), ToolInput(tag="in_build_scaffold_nonoverlapping", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="build a scaffold for non-overlapping mated fragments")), ToolInput(tag="in_use_real_uids", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="use real UIDs from the UID server")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frgs2Clones_V0_1_0().translate("wdl", allow_empty_container=True)

