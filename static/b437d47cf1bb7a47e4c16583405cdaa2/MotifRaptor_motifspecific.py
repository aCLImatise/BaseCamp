from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Motifraptor_Motifspecific_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_motifspecific", base_command=["MotifRaptor", "motifspecific"], inputs=[ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_snp_motif_file", input_type=File(optional=True), prefix="--snp_motif_file", doc=InputDocumentation(doc="SNP motif pair-wise list File, usually from step2")), ToolInput(tag="in_motif_id", input_type=String(optional=True), prefix="--motif_id", doc=InputDocumentation(doc="motif id with name, in the format of motifID__NAME")), ToolInput(tag="in_bg_score_folder", input_type=Directory(optional=True), prefix="--bg_score_folder", doc=InputDocumentation(doc="background score folder, usually from step2\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Motifspecific_V0_1_0().translate("wdl", allow_empty_container=True)

