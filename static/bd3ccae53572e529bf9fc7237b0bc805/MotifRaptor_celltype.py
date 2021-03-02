from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory

Motifraptor_Celltype_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_celltype", base_command=["MotifRaptor", "celltype"], inputs=[ToolInput(tag="in_snp_hit_with_seq", input_type=Int(optional=True), prefix="--snp_hit_withseq", doc=InputDocumentation(doc="need header and columns in this text file with\nsequence (CHR is only a number): ID CHR POS REF ALT")), ToolInput(tag="in_snp_hit", input_type=Int(optional=True), prefix="--snp_hit", doc=InputDocumentation(doc="need header and columns in this text file (CHR is only\na number): ID CHR POS")), ToolInput(tag="in_snp_non_hit", input_type=Int(optional=True), prefix="--snp_non_hit", doc=InputDocumentation(doc="need header and columns in this text file (CHR is only\na number): ID CHR POS")), ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Celltype_V0_1_0().translate("wdl", allow_empty_container=True)

