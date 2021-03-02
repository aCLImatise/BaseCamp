from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vtools_Liftover_V0_1_0 = CommandToolBuilder(tool="vtools_liftover", base_command=["vtools", "liftover"], inputs=[ToolInput(tag="in_flip", input_type=Boolean(optional=True), prefix="--flip", doc=InputDocumentation(doc="Flip primary and alternative reference genomes so that\nthe specified build will become the primary reference\ngenome of the project.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n")), ToolInput(tag="in_build", input_type=String(), position=0, doc=InputDocumentation(doc="Name of the alternative reference genome"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Liftover_V0_1_0().translate("wdl", allow_empty_container=True)

