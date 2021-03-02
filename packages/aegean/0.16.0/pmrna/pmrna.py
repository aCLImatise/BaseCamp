from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Pmrna_V0_1_0 = CommandToolBuilder(tool="pmrna", base_command=["pmrna"], inputs=[ToolInput(tag="in_introns", input_type=Boolean(optional=True), prefix="--introns", doc=InputDocumentation(doc="flag indicating that introns are declared explicitly\nand do not need to be inferred from exon features;\ndefault is to infer introns")), ToolInput(tag="in_locus", input_type=Boolean(optional=True), prefix="--locus", doc=InputDocumentation(doc="report a single representative mRNA for each locus\ninstead of each gene")), ToolInput(tag="in_map", input_type=Boolean(optional=True), prefix="--map", doc=InputDocumentation(doc=": FILE      write each gene/mRNA mapping to the specified file")), ToolInput(tag="in_pseudogenes", input_type=Boolean(optional=True), prefix="--pseudogenes", doc=InputDocumentation(doc="disable pseudogene detection and correction")), ToolInput(tag="in_an_not_dot_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_new_dot_gff_three", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/aegean:0.16.0--hc2cb157_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmrna_V0_1_0().translate("wdl")

