from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Motifraptor_Motiffilter_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_motiffilter", base_command=["MotifRaptor", "motiffilter"], inputs=[ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_motif_summary", input_type=File(optional=True), prefix="--motif_summary", doc=InputDocumentation(doc="Motif Summary File, usually from step2\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Motiffilter_V0_1_0().translate("wdl", allow_empty_container=True)

