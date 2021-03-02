from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Atlas_Place_V0_1_0 = CommandToolBuilder(tool="atlas_place", base_command=["atlas", "place"], inputs=[ToolInput(tag="in_db_name", input_type=String(optional=True), prefix="--db_name", doc=InputDocumentation(doc="db_name")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="force")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="do not output warnings to stderr")), ToolInput(tag="in_tree", input_type=String(optional=True), prefix="--tree", doc=InputDocumentation(doc="tree")), ToolInput(tag="in_searchable_samples", input_type=File(optional=True), prefix="--searchable_samples", doc=InputDocumentation(doc="list of samples (file)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Place_V0_1_0().translate("wdl", allow_empty_container=True)

