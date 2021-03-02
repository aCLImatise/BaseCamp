from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Fathom_V0_1_0 = CommandToolBuilder(tool="fathom", base_command=["fathom"], inputs=[ToolInput(tag="in_gene_stats", input_type=Boolean(optional=True), prefix="-gene-stats", doc=InputDocumentation(doc="[-errors-ok -nucleotide -dinucleotide]")), ToolInput(tag="in_exon_intron", input_type=Float(optional=True), prefix="-exon-intron", doc=InputDocumentation(doc="<-number <int> | -training <float> | -GC <float> | -repeat <float>>")), ToolInput(tag="in_ace_format", input_type=Boolean(optional=True), prefix="-ace-format", doc=InputDocumentation(doc="<-gene-method <string> [-dna -extra <string>]>")), ToolInput(tag="in_ann", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dna", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_commands", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fathom_V0_1_0().translate("wdl", allow_empty_container=True)

