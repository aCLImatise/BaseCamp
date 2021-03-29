from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Aquamis_Setup_Sh_V0_1_0 = CommandToolBuilder(tool="aquamis_setup.sh", base_command=["aquamis_setup.sh"], inputs=[ToolInput(tag="in_cond_a", input_type=Boolean(optional=True), prefix="--conda", doc=InputDocumentation(doc="Install the latest version of 'mamba' to the conda base environment and\ncreate the AQUAMIS environment 'aquamis'")), ToolInput(tag="in_databases", input_type=Boolean(optional=True), prefix="--databases", doc=InputDocumentation(doc="Download databases to ./AQUAMIS/download and extract them in e.g. ./AQUAMIS/reference_db")), ToolInput(tag="in_test_data", input_type=Boolean(optional=True), prefix="--test_data", doc=InputDocumentation(doc="Download test data to ./AQUAMIS/download and extract them in ./AQUAMIS/test_data")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite for downloads in /usr/local/opt/aquamis/download")), ToolInput(tag="in_keep_downloads", input_type=Boolean(optional=True), prefix="--keep_downloads", doc=InputDocumentation(doc="Do not remove downloads after extraction")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print script debug info"))], outputs=[], container="quay.io/biocontainers/aquamis:1.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquamis_Setup_Sh_V0_1_0().translate("wdl")

