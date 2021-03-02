from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Meme_Get_Motif_V0_1_0 = CommandToolBuilder(tool="meme_get_motif", base_command=["meme-get-motif"], inputs=[ToolInput(tag="in_id", input_type=File(optional=True), prefix="-id", doc=InputDocumentation(doc="id of motif to extract from the MEME file")), ToolInput(tag="in_match_alternate_d", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="match alternate id instead of id")), ToolInput(tag="in_i_a", input_type=Boolean(optional=True), prefix="-ia", doc=InputDocumentation(doc="match either id or alternate id")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="-rc", doc=InputDocumentation(doc="reverse complement motifs (assuming alphabet allows)")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="get all motifs in the MEME file")), ToolInput(tag="in_meme_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meme_Get_Motif_V0_1_0().translate("wdl")

