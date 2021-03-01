from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Taxonomy_Filter_Refseq_V0_1_0 = CommandToolBuilder(tool="taxonomy_filter_refseq", base_command=["taxonomy_filter_refseq"], inputs=[ToolInput(tag="in_no_curated", input_type=Boolean(optional=True), prefix="--no_curated", doc=InputDocumentation(doc="Don't accept curated RNAs and proteins (NM_, NR_ and NP_ accessions)")), ToolInput(tag="in_no_predicted", input_type=Boolean(optional=True), prefix="--no_predicted", doc=InputDocumentation(doc="Don't accept computationally predicted RNAs and proteins (XM_, XR_ and XP_ accessions)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="URL for SQLite taxonomy database")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ancestor_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonomy_Filter_Refseq_V0_1_0().translate("wdl", allow_empty_container=True)

