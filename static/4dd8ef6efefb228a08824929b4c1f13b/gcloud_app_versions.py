from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_App_Versions_V0_1_0 = CommandToolBuilder(tool="gcloud_app_versions", base_command=["gcloud", "app", "versions"], inputs=[ToolInput(tag="in_browse", input_type=String(), position=0, doc=InputDocumentation(doc="Open the specified versions in a browser.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete a specified version.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Display all data about an existing version.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List your existing versions.")), ToolInput(tag="in_migrate", input_type=String(), position=4, doc=InputDocumentation(doc="Migrate traffic from one version to another for a set of services.")), ToolInput(tag="in_start", input_type=String(), position=5, doc=InputDocumentation(doc="Start serving specified versions.")), ToolInput(tag="in_stop", input_type=String(), position=6, doc=InputDocumentation(doc="Stop serving specified versions."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Versions_V0_1_0().translate("wdl", allow_empty_container=True)

