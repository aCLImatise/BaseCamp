from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Chakin_Phylogeny_Gene_Families_V0_1_0 = CommandToolBuilder(tool="chakin_phylogeny_gene_families", base_command=["chakin", "phylogeny", "gene_families"], inputs=[ToolInput(tag="in_family_name", input_type=String(optional=True), prefix="--family_name", doc=InputDocumentation(doc="Restrict to families beginning with given prefix")), ToolInput(tag="in_nuke", input_type=Boolean(optional=True), prefix="--nuke", doc=InputDocumentation(doc="Removes all previous gene families data")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Phylogeny_Gene_Families_V0_1_0().translate("wdl", allow_empty_container=True)

