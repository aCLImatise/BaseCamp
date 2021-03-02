from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Freec2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="freec2bed.pl", base_command=["freec2bed.pl"], inputs=[ToolInput(tag="in_file_file_ratio", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="file                   file with ratio")), ToolInput(tag="in_ploidy_ploidy_default", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="ploidy                 ploidy (default 2)")), ToolInput(tag="in_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Freec2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

