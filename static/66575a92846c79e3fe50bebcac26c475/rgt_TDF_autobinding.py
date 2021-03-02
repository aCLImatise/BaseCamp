from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rgt_Tdf_Autobinding_V0_1_0 = CommandToolBuilder(tool="rgt_TDF_autobinding", base_command=["rgt-TDF", "autobinding"], inputs=[ToolInput(tag="in_input_fasta_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input FASTA file of the whole genome")), ToolInput(tag="in_define_minimum_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[Triplexes] Define the minimum length of triplex (default: 20)")), ToolInput(tag="in_set_maximal_errorrate", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[Triplexes] Set the maximal error-rate in % tolerated (default:\n20)")), ToolInput(tag="in_abo", input_type=Boolean(optional=True), prefix="-abo", doc=InputDocumentation(doc="[Triplexes] Autobinding offset. Maximum offset between\nautobinding regions (must be positive, >= 0), e.g., 1 for\nregions to be at least adjacent, 2 if there can be 1 bp space\nbetween segments, etc. (default: 5)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tdf_Autobinding_V0_1_0().translate("wdl", allow_empty_container=True)

