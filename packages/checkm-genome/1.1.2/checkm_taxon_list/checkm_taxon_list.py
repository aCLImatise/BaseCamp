from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Checkm_Taxon_List_V0_1_0 = CommandToolBuilder(tool="checkm_taxon_list", base_command=["checkm", "taxon_list"], inputs=[ToolInput(tag="in_rank", input_type=String(optional=True), prefix="--rank", doc=InputDocumentation(doc="restrict list to specified taxonomic rank (default: ALL)")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="specify an alternative directory for temporary files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Taxon_List_V0_1_0().translate("wdl", allow_empty_container=True)

