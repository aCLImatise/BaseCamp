from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File

Motifraptor_Snpfeature_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_snpfeature", base_command=["MotifRaptor", "snpfeature"], inputs=[ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_cell_type", input_type=String(optional=True), prefix="--cell_type", doc=InputDocumentation(doc="Cell type or Tissue type ID")), ToolInput(tag="in_snp_bed_files", input_type=File(optional=True), prefix="--snp_bed_files", doc=InputDocumentation(doc="SNP cell type bed file folder, usually from step1\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Snpfeature_V0_1_0().translate("wdl", allow_empty_container=True)

