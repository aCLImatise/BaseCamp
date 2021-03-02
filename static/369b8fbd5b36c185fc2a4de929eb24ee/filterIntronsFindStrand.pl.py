from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Filterintronsfindstrand_Pl_V0_1_0 = CommandToolBuilder(tool="filterIntronsFindStrand.pl", base_command=["filterIntronsFindStrand.pl"], inputs=[ToolInput(tag="in_allowed", input_type=String(optional=True), prefix="--allowed", doc=InputDocumentation(doc=",gcaag,atac       Allowed acceptor and donor splice site types")), ToolInput(tag="in_score", input_type=Boolean(optional=True), prefix="--score", doc=InputDocumentation(doc="Set score to 'mult' entry or '1', if the last column does not contain a 'mult' entry")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="--genome", doc=InputDocumentation(doc="see above")), ToolInput(tag="in_introns", input_type=String(optional=True), prefix="--introns", doc=InputDocumentation(doc="see above")), ToolInput(tag="in_genome_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="DNA file in fasta format")), ToolInput(tag="in_introns_dot_gff", input_type=String(), position=1, doc=InputDocumentation(doc="corresponding introns file in gff format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterintronsfindstrand_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

