from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rnazmaf2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="rnazMAF2BED.pl", base_command=["rnazMAF2BED.pl"], inputs=[ToolInput(tag="in_seq_id", input_type=Boolean(optional=True), prefix="--seq-id", doc=InputDocumentation(doc="Specify the sequence identifier of the sequence which should be\nused as a reference to create the output. Use for example 'hg17'\nif you want to get all sequences containing 'hg17' in the\nidenitfier (e.g. 'hg17.chr10', 'hg17.chr22',...). If this option\nis omitted, the first sequence identifier of the first sequence\nin the first alignment block is used.")), ToolInput(tag="in_cluster", input_type=Boolean(optional=True), prefix="--cluster", doc=InputDocumentation(doc="Combine overlapping alignments and report non-overlapping\nregions in the BED output.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints a detailed manual page and exits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazmaf2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

