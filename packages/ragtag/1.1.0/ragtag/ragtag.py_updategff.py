from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ragtag_Py_Updategff_V0_1_0 = CommandToolBuilder(tool="ragtag.py_updategff", base_command=["ragtag.py", "updategff"], inputs=[ToolInput(tag="in_update_misassembly_correction", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="update for misassembly correction (ragtag.correction.agp)")), ToolInput(tag="in_genes_dot_gff", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ragtag_dot_agp", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Py_Updategff_V0_1_0().translate("wdl")

