from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Obenergy_V0_1_0 = CommandToolBuilder(tool="obenergy", base_command=["obenergy"], inputs=[ToolInput(tag="in_verbose_print_indivual", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose: print out indivual energy interactions")), ToolInput(tag="in_ff", input_type=String(optional=True), prefix="-ff", doc=InputDocumentation(doc="select a forcefield\navailable forcefields:")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/openbabel:3.1.1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obenergy_V0_1_0().translate("wdl")

