from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Gcloud_Auth_Activate_Service_Account_V0_1_0 = CommandToolBuilder(tool="gcloud_auth_activate_service_account", base_command=["gcloud", "auth", "activate-service-account"], inputs=[ToolInput(tag="in_key_file", input_type=File(optional=True), prefix="--key-file", doc=InputDocumentation(doc="Path to the private key file.")), ToolInput(tag="in_password_file", input_type=File(optional=True), prefix="--password-file", doc=InputDocumentation(doc="Path to a file containing the password for the service account private\nkey (only for a .p12 file).")), ToolInput(tag="in_prompt_for_password", input_type=Boolean(optional=True), prefix="--prompt-for-password", doc=InputDocumentation(doc="Prompt for the password for the service account private key (only for a\n.p12 file).")), ToolInput(tag="in_g_cloud_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The key file for this command can be obtained using either:\no the Cloud Platform console (https://console.cloud.google.com) or\no $ gcloud iam service-accounts keys create."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Auth_Activate_Service_Account_V0_1_0().translate("wdl", allow_empty_container=True)

