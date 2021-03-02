from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Mykrobe_Panels_Update_Metadata_V0_1_0 = CommandToolBuilder(tool="mykrobe_panels_update_metadata", base_command=["mykrobe", "panels", "update_metadata"], inputs=[ToolInput(tag="in_panels_dir", input_type=Directory(optional=True), prefix="--panels_dir", doc=InputDocumentation(doc="Name of directory that contains panel data. Default:\n/usr/local/lib/python3.6/site-packages/mykrobe/data")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Only output warnings/errors to stderr")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Output debugging information to stderr"))], outputs=[], container="quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mykrobe_Panels_Update_Metadata_V0_1_0().translate("wdl")

