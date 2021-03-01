from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Migrate_N_V0_1_0 = CommandToolBuilder(tool="migrate_n", base_command=["migrate-n"], inputs=[ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="# shows the current version and exits")), ToolInput(tag="in_no_menu", input_type=Boolean(optional=True), prefix="-nomenu", doc=InputDocumentation(doc="# does not display menu, use this for batch jobs")), ToolInput(tag="in_menu", input_type=Boolean(optional=True), prefix="-menu", doc=InputDocumentation(doc="# forces the display of the menu"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Migrate_N_V0_1_0().translate("wdl", allow_empty_container=True)

