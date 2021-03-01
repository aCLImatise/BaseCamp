from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Auth_Application_Default_V0_1_0 = CommandToolBuilder(tool="gcloud_auth_application_default", base_command=["gcloud", "auth", "application-default"], inputs=[ToolInput(tag="in_credentials", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_application_dot", input_type=String(), position=0, doc=InputDocumentation(doc="More information on ADC and how they work can be found here:")), ToolInput(tag="in_login", input_type=String(), position=0, doc=InputDocumentation(doc="Acquire new user credentials to use for Application Default"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Auth_Application_Default_V0_1_0().translate("wdl", allow_empty_container=True)

