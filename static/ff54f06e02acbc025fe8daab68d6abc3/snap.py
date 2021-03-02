from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Snap_V0_1_0 = CommandToolBuilder(tool="snap", base_command=["snap"], inputs=[ToolInput(tag="in_lc_mask", input_type=Boolean(optional=True), prefix="-lcmask", doc=InputDocumentation(doc="treat lowercase as N")), ToolInput(tag="in_plus", input_type=Boolean(optional=True), prefix="-plus", doc=InputDocumentation(doc="predict on plus strand only")), ToolInput(tag="in_minus", input_type=Boolean(optional=True), prefix="-minus", doc=InputDocumentation(doc="predict on minus strand only")), ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="-gff", doc=InputDocumentation(doc="output annotation as GFF")), ToolInput(tag="in_ace", input_type=Boolean(optional=True), prefix="-ace", doc=InputDocumentation(doc="output annotation as ACED")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="do not send progress to STDERR")), ToolInput(tag="in_aa", input_type=File(optional=True), prefix="-aa", doc=InputDocumentation(doc="create FASTA file of proteins")), ToolInput(tag="in_tx", input_type=File(optional=True), prefix="-tx", doc=InputDocumentation(doc="create FASTA file of transcripts")), ToolInput(tag="in_xdef", input_type=File(optional=True), prefix="-xdef", doc=InputDocumentation(doc="external definitions")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="name for the gene [default snap]")), ToolInput(tag="in_hmm_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snap_V0_1_0().translate("wdl", allow_empty_container=True)

