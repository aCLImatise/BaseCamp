from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Quiver_Py_V0_1_0 = CommandToolBuilder(tool="fc_quiver.py", base_command=["fc_quiver.py"], inputs=[ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="target pipeline: clr=regular; ccs=only ccs data (default: clr)")), ToolInput(tag="in_logging_config_fn", input_type=String(optional=True), prefix="--logging-config-fn", doc=InputDocumentation(doc="Optional standard Python logging config (default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Quiver_Py_V0_1_0().translate("wdl", allow_empty_container=True)

