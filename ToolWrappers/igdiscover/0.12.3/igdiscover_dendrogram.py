from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Igdiscover_Dendrogram_V0_1_0 = CommandToolBuilder(tool="igdiscover_dendrogram", base_command=["igdiscover", "dendrogram"], inputs=[ToolInput(tag="in_mark", input_type=File(optional=True), prefix="--mark", doc=InputDocumentation(doc="Path to a FASTA file with a set of 'known' sequences.\nSequences in the main file that do *not* occur here\nwill be marked with (new). If not given, no sequences\nwill be marked (use this to compare two databases).")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Linkage method. Default: 'average' (=UPGMA)\n")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Path to input FASTA file")), ToolInput(tag="in_plot", input_type=String(), position=1, doc=InputDocumentation(doc="Path to output PDF or PNG"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Dendrogram_V0_1_0().translate("wdl", allow_empty_container=True)

