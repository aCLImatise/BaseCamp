from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Install_V0_1_0 = CommandToolBuilder(tool="amptk_install", base_command=["amptk", "install"], inputs=[ToolInput(tag="in_install_databases_choices", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Install Databases. Choices: ITS, 16S, LSU, COI")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="Use local downloads.json instead of github version")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Over-write existing databases")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Install_V0_1_0().translate("wdl")

