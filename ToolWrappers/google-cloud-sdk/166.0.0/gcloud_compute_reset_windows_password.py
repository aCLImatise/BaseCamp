from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Reset_Windows_Password_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_reset_windows_password", base_command=["gcloud", "compute", "reset-windows-password"], inputs=[ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="USER specifies the username to get the password for. If omitted, the\nusername is derived from your authenticated account email address.")), ToolInput(tag="in_zone", input_type=String(optional=True), prefix="--zone", doc=InputDocumentation(doc="The zone of the instance to operate on. If not specified, you may be\nprompted to select a zone. gcloud will attempt to identify the zone by\nsearching for resources in your project. If the zone cannot be\ndetermined, you will then be prompted with all Google Cloud Platform\nzones.\nTo avoid prompting when this flag is omitted, you can set the\ncompute/zone property:\n$ gcloud config set compute/zone ZONE\nA list of zones can be fetched by running:\n$ gcloud compute zones list\nTo unset the property, run:\n$ gcloud config unset compute/zone\nAlternatively, the zone can be stored in the environment variable\nCLOUDSDK_COMPUTE_ZONE.")), ToolInput(tag="in_instance_name", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the instance to operate on."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Reset_Windows_Password_V0_1_0().translate("wdl", allow_empty_container=True)

