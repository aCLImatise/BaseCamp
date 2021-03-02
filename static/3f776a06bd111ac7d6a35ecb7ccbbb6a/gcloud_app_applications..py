from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_App_Applications__V0_1_0 = CommandToolBuilder(tool="gcloud_app_applications.", base_command=["gcloud", "app", "applications."], inputs=[ToolInput(tag="in_versions", input_type=String(), position=0, doc=InputDocumentation(doc="command may be         browse | create | deploy | describe | open-console"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Applications__V0_1_0().translate("wdl", allow_empty_container=True)

