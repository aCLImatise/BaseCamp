from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fetchsequence_V0_1_0 = CommandToolBuilder(tool="FetchSequence", base_command=["FetchSequence"], inputs=[ToolInput(tag="in_geneid", input_type=Int(optional=True), prefix="--geneid", doc=InputDocumentation(doc="Gene id")), ToolInput(tag="in_gene_start", input_type=Int(optional=True), prefix="--genestart", doc=InputDocumentation(doc="Gene start")), ToolInput(tag="in_genes_top", input_type=Int(optional=True), prefix="--genestop", doc=InputDocumentation(doc="Gene stop")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Loud verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet verbosity"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetchsequence_V0_1_0().translate("wdl", allow_empty_container=True)

