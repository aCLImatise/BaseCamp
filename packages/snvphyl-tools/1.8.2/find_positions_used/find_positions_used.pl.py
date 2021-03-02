from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Find_Positions_Used_Pl_V0_1_0 = CommandToolBuilder(tool="find_positions_used.pl", base_command=["find-positions-used.pl"], inputs=[ToolInput(tag="in_core_pos", input_type=Boolean(optional=True), prefix="--core-pos", doc=InputDocumentation(doc=":  Core positions file from vcf2core.pl (GFF format).")), ToolInput(tag="in_bad_pos", input_type=Boolean(optional=True), prefix="--bad-pos", doc=InputDocumentation(doc=": Bad positions file, format of")), ToolInput(tag="in_tab", input_type=Boolean(optional=True), prefix="--tab", doc=InputDocumentation(doc=": Print in tab-deliminted format")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc=":  Reference fasta file.")), ToolInput(tag="in_chromosome", input_type=String(), position=0, doc=InputDocumentation(doc="start   end"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Positions_Used_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

