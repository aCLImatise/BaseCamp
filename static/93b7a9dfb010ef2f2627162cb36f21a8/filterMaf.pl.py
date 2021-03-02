from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Filtermaf_Pl_V0_1_0 = CommandToolBuilder(tool="filterMaf.pl", base_command=["filterMaf.pl"], inputs=[ToolInput(tag="in_species", input_type=Int(optional=True), prefix="--species", doc=InputDocumentation(doc=",species2,...     a comma separated list of the species which shall be kept in the filtered alignment (at least 2 species,\nby default all species are kept)")), ToolInput(tag="in_min_seq", input_type=Int(optional=True), prefix="--min-seq", doc=InputDocumentation(doc="only blocks that contain at list N sequences are taken (N=2 by default)")), ToolInput(tag="in_interval", input_type=String(optional=True), prefix="--interval", doc=InputDocumentation(doc=":start-end          a genomic interval (seqID is equal to the first field of an 's' line in the alignment)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtermaf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

