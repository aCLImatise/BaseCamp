from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cactus_Check_V0_1_0 = CommandToolBuilder(tool="cactus_check", base_command=["cactus_check"], inputs=[ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--logLevel", doc=InputDocumentation(doc=": Set the log level")), ToolInput(tag="in_cactus_disk", input_type=Boolean(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc=": The location of the flower disk directory")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc=": Check all flowers recursively")), ToolInput(tag="in_check_normalised", input_type=Boolean(optional=True), prefix="--checkNormalised", doc=InputDocumentation(doc=": Check cactus is normalised"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Check_V0_1_0().translate("wdl", allow_empty_container=True)

