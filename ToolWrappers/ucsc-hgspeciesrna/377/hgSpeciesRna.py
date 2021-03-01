from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Hgspeciesrna_V0_1_0 = CommandToolBuilder(tool="hgSpeciesRna", base_command=["hgSpeciesRna"], inputs=[ToolInput(tag="in_est", input_type=Boolean(optional=True), prefix="-est", doc=InputDocumentation(doc="- If set will get ESTs rather than mRNAs")), ToolInput(tag="in_filter", input_type=File(optional=True), prefix="-filter", doc=InputDocumentation(doc="- only read accessions listed in file")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genus", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_species", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgspeciesrna_V0_1_0().translate("wdl", allow_empty_container=True)

