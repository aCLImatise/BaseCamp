from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gcloud_App_Open_Console_V0_1_0 = CommandToolBuilder(tool="gcloud_app_open_console", base_command=["gcloud", "app", "open-console"], inputs=[ToolInput(tag="in_logs", input_type=Boolean(optional=True), prefix="--logs", doc=InputDocumentation(doc="Open the log viewer instead of the App Engine dashboard.")), ToolInput(tag="in_service", input_type=String(optional=True), prefix="--service", doc=InputDocumentation(doc="The service to consider. If not specified, use the default service."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Open_Console_V0_1_0().translate("wdl", allow_empty_container=True)

