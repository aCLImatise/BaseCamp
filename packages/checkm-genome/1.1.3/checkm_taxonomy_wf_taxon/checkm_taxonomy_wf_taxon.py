from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Checkm_Taxonomy_Wf_Taxon_V0_1_0 = CommandToolBuilder(tool="checkm_taxonomy_wf_taxon", base_command=["checkm", "taxonomy_wf", "taxon"], inputs=[ToolInput(tag="in_individual_markers", input_type=Boolean(optional=True), prefix="--individual_markers", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_nt", input_type=Boolean(optional=True), prefix="--nt", doc=InputDocumentation(doc="")), ToolInput(tag="in_ali", input_type=Boolean(optional=True), prefix="--ali", doc=InputDocumentation(doc="")), ToolInput(tag="in_check_m", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_taxonomy_wf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Taxonomy_Wf_Taxon_V0_1_0().translate("wdl")

