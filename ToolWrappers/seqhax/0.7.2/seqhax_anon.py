from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Seqhax_Anon_V0_1_0 = CommandToolBuilder(tool="seqhax_anon", base_command=["seqhax", "anon"], inputs=[ToolInput(tag="in_use_base_ids", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Use base-16 sequence IDs.")), ToolInput(tag="in_treat_reads_add", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Treat reads as pairs, add /1 or /2 to headers."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Anon_V0_1_0().translate("wdl", allow_empty_container=True)

