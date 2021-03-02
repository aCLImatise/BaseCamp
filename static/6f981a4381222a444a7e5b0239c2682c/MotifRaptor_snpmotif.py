from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int

Motifraptor_Snpmotif_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_snpmotif", base_command=["MotifRaptor", "snpmotif"], inputs=[ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_cell_type", input_type=String(optional=True), prefix="--cell_type", doc=InputDocumentation(doc="Cell type or Tissue type ID")), ToolInput(tag="in_snp_hit_bed", input_type=File(optional=True), prefix="--snp_hit_bed", doc=InputDocumentation(doc="hit snps on union bed file, usually from step1")), ToolInput(tag="in_snp_hit_seq", input_type=Int(optional=True), prefix="--snp_hit_seq", doc=InputDocumentation(doc="hit snps with sequence information, usually from step1")), ToolInput(tag="in_bg_snp", input_type=File(optional=True), prefix="--bg_snp", doc=InputDocumentation(doc="background snp list file or (genome)")), ToolInput(tag="in_motifs", input_type=File(optional=True), prefix="--motifs", doc=InputDocumentation(doc="motif list file, no header, or (all)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Snpmotif_V0_1_0().translate("wdl", allow_empty_container=True)

