from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Solvebio_V0_1_0 = CommandToolBuilder(tool="solvebio", base_command=["solvebio"], inputs=[ToolInput(tag="in_api_host", input_type=String(optional=True), prefix="--api-host", doc=InputDocumentation(doc="Override the default SolveBio API host")), ToolInput(tag="in_api_key", input_type=String(optional=True), prefix="--api-key", doc=InputDocumentation(doc="Manually provide a SolveBio API key")), ToolInput(tag="in_access_token", input_type=Int(optional=True), prefix="--access-token", doc=InputDocumentation(doc="Manually provide a SolveBio OAuth2 access token")), ToolInput(tag="in_login", input_type=String(), position=0, doc=InputDocumentation(doc="Login and save credentials")), ToolInput(tag="in_logout", input_type=String(), position=1, doc=InputDocumentation(doc="Logout and delete saved credentials")), ToolInput(tag="in_whoami", input_type=String(), position=2, doc=InputDocumentation(doc="Show your SolveBio email address")), ToolInput(tag="in_tutorial", input_type=String(), position=3, doc=InputDocumentation(doc="Show the SolveBio Python Tutorial")), ToolInput(tag="in_shell", input_type=String(), position=4, doc=InputDocumentation(doc="Open the SolveBio Python shell")), ToolInput(tag="in_import", input_type=String(), position=5, doc=InputDocumentation(doc="Import a local file into a SolveBio dataset")), ToolInput(tag="in_create_dataset", input_type=String(), position=6, doc=InputDocumentation(doc="Create a SolveBio dataset")), ToolInput(tag="in_upload", input_type=String(), position=7, doc=InputDocumentation(doc="Upload a file or directory to a SolveBio Vault")), ToolInput(tag="in_download", input_type=String(), position=8, doc=InputDocumentation(doc="Download one or more files from a SolveBio Vault.")), ToolInput(tag="in_tag", input_type=String(), position=9, doc=InputDocumentation(doc="Apply tags or remove tags on objects")), ToolInput(tag="in_queue", input_type=String(), position=10, doc=InputDocumentation(doc="Shows the current job queue, grouped by User"))], outputs=[], container="quay.io/biocontainers/solvebio:2.16.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Solvebio_V0_1_0().translate("wdl")

