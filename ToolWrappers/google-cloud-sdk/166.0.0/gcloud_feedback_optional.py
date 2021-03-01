from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gcloud_Feedback_Optional_V0_1_0 = CommandToolBuilder(tool="gcloud_feedback_optional", base_command=["gcloud", "feedback", "optional"], inputs=[ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Path to the log file from a prior gcloud run."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Feedback_Optional_V0_1_0().translate("wdl", allow_empty_container=True)

