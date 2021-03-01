from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tanmask_V0_1_0 = CommandToolBuilder(tool="TANmask", base_command=["TANmask"], inputs=[ToolInput(tag="in_verbose_mode_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose mode, output statistics as proceed.")), ToolInput(tag="in_shortest_tandem_interval", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": shortest tandem interval to report.")), ToolInput(tag="in_use_name_tandem", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": use this name as for the tandem mask track"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tanmask_V0_1_0().translate("wdl", allow_empty_container=True)

