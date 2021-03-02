from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Miso_Pack_V0_1_0 = CommandToolBuilder(tool="miso_pack", base_command=["miso_pack"], inputs=[ToolInput(tag="in_pack", input_type=Directory(optional=True), prefix="--pack", doc=InputDocumentation(doc="Pack a MISO output containing dir(s). Takes as input a\ndirectory or a comma-separated set of directories that contain\nMISO output.")), ToolInput(tag="in_view", input_type=File(optional=True), prefix="--view", doc=InputDocumentation(doc="View a MISO database (.miso_db file)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Miso_Pack_V0_1_0().translate("wdl", allow_empty_container=True)

