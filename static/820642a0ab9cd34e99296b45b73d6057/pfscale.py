from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pfscale_V0_1_0 = CommandToolBuilder(tool="pfscale", base_command=["pfscale"], inputs=[ToolInput(tag="in_impose_limit_line", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": do not impose limit on line length.")), ToolInput(tag="in_valuelogarithmic_base_parameters", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="<value>:\nlogarithmic base of parameters (default: 10).")), ToolInput(tag="in_valueprofile_mode_number", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="<value>:\nprofile mode number to scale.")), ToolInput(tag="in_valuedatabase_size_default", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="<value>:\ndatabase size (default: 14147368).")), ToolInput(tag="in_valueupper_threshold_probability", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="<value>:\nupper threshold of probability range (default: 0.0001).")), ToolInput(tag="in_valuelower_threshold_probability", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="<value>:\nlower threshold of probability range (default: 0.000001).")), ToolInput(tag="in_lhl_mn_pq", input_type=Boolean(optional=True), prefix="-lhLMNPQ", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pfscale_V0_1_0().translate("wdl", allow_empty_container=True)

