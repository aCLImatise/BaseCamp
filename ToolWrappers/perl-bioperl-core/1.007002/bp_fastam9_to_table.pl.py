from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bp_Fastam9_To_Table_Pl_V0_1_0 = CommandToolBuilder(tool="bp_fastam9_to_table.pl", base_command=["bp_fastam9_to_table.pl"], inputs=[ToolInput(tag="in__filter_evalue", input_type=String(optional=True), prefix="--evalue", doc=InputDocumentation(doc="-- filter by evalue")), ToolInput(tag="in_bit_score", input_type=Boolean(optional=True), prefix="--bitscore", doc=InputDocumentation(doc="-- filter by bitscore --header -- boolean flag to")), ToolInput(tag="in_query_name", input_type=String(), position=0, doc=InputDocumentation(doc="hit name")), ToolInput(tag="in_bit_score", input_type=String(), position=0, doc=InputDocumentation(doc="bit score"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Fastam9_To_Table_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

