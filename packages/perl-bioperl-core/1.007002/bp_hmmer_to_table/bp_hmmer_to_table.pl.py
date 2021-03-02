from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bp_Hmmer_To_Table_Pl_V0_1_0 = CommandToolBuilder(tool="bp_hmmer_to_table.pl", base_command=["bp_hmmer_to_table.pl"], inputs=[ToolInput(tag="in_evalue", input_type=String(optional=True), prefix="--evalue", doc=InputDocumentation(doc="-- filter by evalue")), ToolInput(tag="in_bit_score", input_type=Boolean(optional=True), prefix="--bitscore", doc=InputDocumentation(doc="-- filter by bitscore --header -- boolean flag to")), ToolInput(tag="in_score", input_type=String(), position=0, doc=InputDocumentation(doc="e-value"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Hmmer_To_Table_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

