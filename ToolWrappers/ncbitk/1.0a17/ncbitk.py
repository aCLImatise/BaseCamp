from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ncbitk_V0_1_0 = CommandToolBuilder(tool="ncbitk", base_command=["ncbitk"], inputs=[ToolInput(tag="in_no_update", input_type=Boolean(optional=True), prefix="--no-update", doc=InputDocumentation(doc="Sync your collection with the latest\nassembly versions")), ToolInput(tag="in_update_assembly", input_type=Boolean(optional=True), prefix="--update-assembly", doc=InputDocumentation(doc="Download the latest assembly summary and\ntaxonomy dumpOr use your local copies.")), ToolInput(tag="in_from_file", input_type=File(optional=True), prefix="--from-file", doc=InputDocumentation(doc="Show the current status of your genome")), ToolInput(tag="in_collection", input_type=String(), position=0, doc=InputDocumentation(doc="--help                          Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbitk_V0_1_0().translate("wdl", allow_empty_container=True)

