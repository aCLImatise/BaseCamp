from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Arv_Ws_V0_1_0 = CommandToolBuilder(tool="arv_ws", base_command=["arv-ws"], inputs=[ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Filter events on object_uuid")), ToolInput(tag="in_filters", input_type=String(optional=True), prefix="--filters", doc=InputDocumentation(doc="Arvados query filter to apply to log events (JSON\nencoded)")), ToolInput(tag="in_start_time", input_type=String(optional=True), prefix="--start-time", doc=InputDocumentation(doc="Arvados query filter to fetch log events created at or\nafter this time. This will be server time in UTC.\nAllowed format: YYYY-MM-DD or YYYY-MM-DD hh:mm:ss")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--id", doc=InputDocumentation(doc="Start from given log id.")), ToolInput(tag="in_poll_interval", input_type=Int(optional=True), prefix="--poll-interval", doc=InputDocumentation(doc="If websockets is not available, specify the polling\ninterval, default is every 15 seconds")), ToolInput(tag="in_no_poll", input_type=Boolean(optional=True), prefix="--no-poll", doc=InputDocumentation(doc="Do not poll if websockets are not available, just fail")), ToolInput(tag="in_pipeline", input_type=String(optional=True), prefix="--pipeline", doc=InputDocumentation(doc="Supply pipeline uuid, print log output from pipeline\nand its jobs")), ToolInput(tag="in_job", input_type=String(optional=True), prefix="--job", doc=InputDocumentation(doc="Supply job uuid, print log output from jobs"))], outputs=[], container="quay.io/biocontainers/arvados-python-client:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Ws_V0_1_0().translate("wdl")

