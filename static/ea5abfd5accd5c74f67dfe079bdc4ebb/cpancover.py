from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Cpancover_V0_1_0 = CommandToolBuilder(tool="cpancover", base_command=["cpancover"], inputs=[ToolInput(tag="in_redo_cpan_cover_html", input_type=File(optional=True), prefix="-redo_cpancover_html", doc=InputDocumentation(doc="/path/to/dir")), ToolInput(tag="in_output_dir", input_type=Boolean(optional=True), prefix="-outputdir", doc=InputDocumentation(doc="/path/to/dir")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="-info", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpancover_V0_1_0().translate("wdl", allow_empty_container=True)

