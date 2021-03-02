from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Checkm_Taxon_Set_Marker_File_V0_1_0 = CommandToolBuilder(tool="checkm_taxon_set_marker_file", base_command=["checkm", "taxon_set", "marker_file"], inputs=[ToolInput(tag="in_tmpdir", input_type=String(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_check_m", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tax_on_set", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Taxon_Set_Marker_File_V0_1_0().translate("wdl", allow_empty_container=True)

