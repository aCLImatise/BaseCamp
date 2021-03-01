from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Import_Igenome_V0_1_0 = CommandToolBuilder(tool="import_igenome", base_command=["import_igenome"], inputs=[ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="path to the desired genome tarball or directory to")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="path to local genome configuration file. Optional if\n'REFGENIE' environment variable is set.\n")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_integrate", input_type=String(), position=0, doc=InputDocumentation(doc="-g GENOME, --genome GENOME"))], outputs=[], container="quay.io/biocontainers/refgenie:0.9.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Igenome_V0_1_0().translate("wdl")

