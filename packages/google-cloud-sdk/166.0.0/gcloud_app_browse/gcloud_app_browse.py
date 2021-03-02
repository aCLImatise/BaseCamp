from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gcloud_App_Browse_V0_1_0 = CommandToolBuilder(tool="gcloud_app_browse", base_command=["gcloud", "app", "browse"], inputs=[ToolInput(tag="in_launch_browser", input_type=Boolean(optional=True), prefix="--launch-browser", doc=InputDocumentation(doc="Launch a browser if possible. When disabled, only displays the URL.\nEnabled by default, use --no-launch-browser to disable.")), ToolInput(tag="in_service", input_type=String(optional=True), prefix="--service", doc=InputDocumentation(doc="The service that should be opened. If not specified, use the default\nservice. May be used in conjunction with --version."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Browse_V0_1_0().translate("wdl", allow_empty_container=True)

