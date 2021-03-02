from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gcloud_Auth_Login_V0_1_0 = CommandToolBuilder(tool="gcloud_auth_login", base_command=["gcloud", "auth", "login"], inputs=[ToolInput(tag="in_activate", input_type=Boolean(optional=True), prefix="--activate", doc=InputDocumentation(doc="Set the new account to active. Enabled by default, use --no-activate to\ndisable.")), ToolInput(tag="in_brief", input_type=Boolean(optional=True), prefix="--brief", doc=InputDocumentation(doc="Minimal user output.")), ToolInput(tag="in_enable_g_drive_access", input_type=Boolean(optional=True), prefix="--enable-gdrive-access", doc=InputDocumentation(doc="Enable Google Drive access.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Re-run the web authorization flow even if the given account has valid\ncredentials.")), ToolInput(tag="in_launch_browser", input_type=Boolean(optional=True), prefix="--launch-browser", doc=InputDocumentation(doc="Launch a browser for authorization. If not enabled or DISPLAY variable\nis not set, prints a URL to standard output to be copied. Enabled by\ndefault, use --no-launch-browser to disable."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Auth_Login_V0_1_0().translate("wdl", allow_empty_container=True)

