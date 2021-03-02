from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Tobias_Downloaddata_V0_1_0 = CommandToolBuilder(tool="TOBIAS_DownloadData", base_command=["TOBIAS", "DownloadData"], inputs=[ToolInput(tag="in_endpoint", input_type=Boolean(optional=True), prefix="--endpoint", doc=InputDocumentation(doc="Link to the s3 server (default: The loosolab s3 server)")), ToolInput(tag="in_bucket", input_type=Boolean(optional=True), prefix="--bucket", doc=InputDocumentation(doc="Name of bucket to download (default: data-tobias-2020)")), ToolInput(tag="in_patterns", input_type=Boolean(optional=True), prefix="--patterns", doc=InputDocumentation(doc="List of patterns for files to download e.g. '*.txt' (default: *)")), ToolInput(tag="in_username", input_type=Boolean(optional=True), prefix="--username", doc=InputDocumentation(doc="Username for endpoint (default: None set)")), ToolInput(tag="in_key", input_type=Boolean(optional=True), prefix="--key", doc=InputDocumentation(doc="Access key for endpoint (default: None set)")), ToolInput(tag="in_yaml", input_type=Boolean(optional=True), prefix="--yaml", doc=InputDocumentation(doc="Set the endpoint/bucket/access information through a config file in\n.yaml format (NOTE: overwrites commandline arguments)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force download of already existing files (default: warn and skip)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[], container="quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Downloaddata_V0_1_0().translate("wdl")

