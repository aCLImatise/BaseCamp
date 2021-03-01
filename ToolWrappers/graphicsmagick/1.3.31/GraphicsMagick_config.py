from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Graphicsmagick_Config_V0_1_0 = CommandToolBuilder(tool="GraphicsMagick_config", base_command=["GraphicsMagick-config"], inputs=[ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="")), ToolInput(tag="in_ldflags", input_type=Boolean(optional=True), prefix="--ldflags", doc=InputDocumentation(doc="")), ToolInput(tag="in_exec_prefix", input_type=Boolean(optional=True), prefix="--exec-prefix", doc=InputDocumentation(doc="")), ToolInput(tag="in_cppflags", input_type=Boolean(optional=True), prefix="--cppflags", doc=InputDocumentation(doc="")), ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphicsmagick_Config_V0_1_0().translate("wdl", allow_empty_container=True)

