from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Phase_Py_V0_1_0 = CommandToolBuilder(tool="fc_phase.py", base_command=["fc_phase.py"], inputs=[ToolInput(tag="in_logging_config_fn", input_type=String(optional=True), prefix="--logging-config-fn", doc=InputDocumentation(doc="Optional standard Python logging config (default: None)\n")), ToolInput(tag="in_config_fn", input_type=String(), position=0, doc=InputDocumentation(doc="Configuration file. (This needs its own help section. Note: smrt_bin is deprecated, but if supplied will be appended to PATH.)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Phase_Py_V0_1_0().translate("wdl", allow_empty_container=True)

