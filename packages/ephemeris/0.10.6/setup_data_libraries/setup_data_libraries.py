from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Setup_Data_Libraries_V0_1_0 = CommandToolBuilder(tool="setup_data_libraries", base_command=["setup-data-libraries"], inputs=[ToolInput(tag="in_training", input_type=File(optional=True), prefix="--training", doc=InputDocumentation(doc="Set defaults that make sense for training data.")), ToolInput(tag="in_legacy", input_type=Boolean(optional=True), prefix="--legacy", doc=InputDocumentation(doc="Use legacy APIs even for newer Galaxies that should\nhave a batch upload API enabled.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase output verbosity.")), ToolInput(tag="in_galaxy", input_type=String(optional=True), prefix="--galaxy", doc=InputDocumentation(doc="Target Galaxy instance URL/IP address")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="Galaxy user email address")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Password for the Galaxy user")), ToolInput(tag="in_api_key", input_type=File(optional=True), prefix="--api_key", doc=InputDocumentation(doc="Galaxy admin user API key (required if not defined in\nthe tools list file)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Setup_Data_Libraries_V0_1_0().translate("wdl", allow_empty_container=True)

