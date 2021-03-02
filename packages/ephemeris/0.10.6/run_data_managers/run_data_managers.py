from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Run_Data_Managers_V0_1_0 = CommandToolBuilder(tool="run_data_managers", base_command=["run-data-managers"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Path to the YAML config file with the list of data\nmanagers and data to install.")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Disables checking whether the item already exists in\nthe tool data table.")), ToolInput(tag="in_ignore_errors", input_type=Boolean(optional=True), prefix="--ignore_errors", doc=InputDocumentation(doc="Do not stop running when jobs have failed.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase output verbosity.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log_file", doc=InputDocumentation(doc="Where the log file should be stored. Default is a file\nin your system's temp folder")), ToolInput(tag="in_galaxy", input_type=String(optional=True), prefix="--galaxy", doc=InputDocumentation(doc="Target Galaxy instance URL/IP address")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="Galaxy user email address")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Password for the Galaxy user")), ToolInput(tag="in_api_key", input_type=File(optional=True), prefix="--api_key", doc=InputDocumentation(doc="Galaxy admin user API key (required if not defined in\nthe tools list file)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Data_Managers_V0_1_0().translate("wdl", allow_empty_container=True)

