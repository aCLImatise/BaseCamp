from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Ml_Engine_Jobs_V0_1_0 = CommandToolBuilder(tool="gcloud_ml_engine_jobs", base_command=["gcloud", "ml-engine", "jobs"], inputs=[ToolInput(tag="in_submit", input_type=String(), position=0, doc=InputDocumentation(doc="Cloud ML Engine Jobs submit commands.")), ToolInput(tag="in_cancel", input_type=String(), position=0, doc=InputDocumentation(doc="Cancel a running Cloud ML Engine job.")), ToolInput(tag="in_describe", input_type=String(), position=1, doc=InputDocumentation(doc="Describe a Cloud ML Engine job.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="List existing Cloud ML Engine jobs.")), ToolInput(tag="in_stream_logs", input_type=String(), position=3, doc=InputDocumentation(doc="Show logs from a running Cloud ML Engine job."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Ml_Engine_Jobs_V0_1_0().translate("wdl", allow_empty_container=True)

