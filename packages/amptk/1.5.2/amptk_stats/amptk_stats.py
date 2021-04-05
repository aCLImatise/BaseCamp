from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Stats_V0_1_0 = CommandToolBuilder(tool="amptk_stats", base_command=["amptk", "stats"], inputs=[ToolInput(tag="in_biom", input_type=Boolean(optional=True), prefix="--biom", doc=InputDocumentation(doc="Input BIOM file with taxonomy and metadata (Required)")), ToolInput(tag="in_tree", input_type=Boolean(optional=True), prefix="--tree", doc=InputDocumentation(doc="Phylogeny of OTUs (from amptk taxonomy) (Required)")), ToolInput(tag="in_distance", input_type=Boolean(optional=True), prefix="--distance", doc=InputDocumentation(doc="Distance metric. Default: raupcrick [raupcrick,jaccard,bray,unifrac,wunifrac]")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Output base name. Default: amptk_stats")), ToolInput(tag="in_ignore_otus", input_type=Boolean(optional=True), prefix="--ignore_otus", doc=InputDocumentation(doc="Drop OTUs from table before running stats")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Stats_V0_1_0().translate("wdl")

