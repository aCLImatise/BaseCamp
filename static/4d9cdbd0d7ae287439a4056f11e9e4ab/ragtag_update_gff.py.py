from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ragtag_Update_Gff_Py_V0_1_0 = CommandToolBuilder(tool="ragtag_update_gff.py", base_command=["ragtag_update_gff.py"], inputs=[ToolInput(tag="in_update_misassembly_correction", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="update for misassembly correction (ragtag.correction.agp)")), ToolInput(tag="in_ragtag_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_update_gff", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genes_dot_gff", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_ragtag_dot_agp", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Update_Gff_Py_V0_1_0().translate("wdl")

