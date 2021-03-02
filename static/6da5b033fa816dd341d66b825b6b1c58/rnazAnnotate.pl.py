from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rnazannotate_Pl_V0_1_0 = CommandToolBuilder(tool="rnazAnnotate.pl", base_command=["rnazAnnotate.pl"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Set the annotation BED file with this option.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazannotate_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

