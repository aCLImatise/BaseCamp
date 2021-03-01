from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Motifraptor_Snpspecific_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_snpspecific", base_command=["MotifRaptor", "snpspecific"], inputs=[ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_snp_motif_file", input_type=File(optional=True), prefix="--snp_motif_file", doc=InputDocumentation(doc="SNP motif pair-wise list File, usually from step2")), ToolInput(tag="in_snp_id", input_type=String(optional=True), prefix="--snp_id", doc=InputDocumentation(doc="SNP id\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Snpspecific_V0_1_0().translate("wdl", allow_empty_container=True)

