from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, File

Synapse_Associate_V0_1_0 = CommandToolBuilder(tool="synapse_associate", base_command=["synapse", "associate"], inputs=[ToolInput(tag="in_limit_search", input_type=Directory(optional=True), prefix="--limitSearch", doc=InputDocumentation(doc="Synapse ID of a container such as project or folder to\nlimit search to.")), ToolInput(tag="in_perform_recursive_association", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Perform recursive association with all local files in\na folder\n")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="local file path"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Associate_V0_1_0().translate("wdl")

