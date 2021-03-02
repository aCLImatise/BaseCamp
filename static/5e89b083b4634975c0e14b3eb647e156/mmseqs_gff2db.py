from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Gff2Db_V0_1_0 = CommandToolBuilder(tool="mmseqs_gff2db", base_command=["mmseqs", "gff2db"], inputs=[ToolInput(tag="in_gff_type", input_type=Boolean(optional=True), prefix="--gff-type", doc=InputDocumentation(doc="type in the GFF file to filter by")), ToolInput(tag="in_id_offset", input_type=Boolean(optional=True), prefix="--id-offset", doc=InputDocumentation(doc="0               numeric ids in index file are offset by this value")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Gff2Db_V0_1_0().translate("wdl", allow_empty_container=True)

