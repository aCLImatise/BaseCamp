from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Taxmapper_Map_V0_1_0 = CommandToolBuilder(tool="taxmapper_map", base_command=["taxmapper", "map"], inputs=[ToolInput(tag="in_maximum_read_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Maximum read length")), ToolInput(tag="in_forward", input_type=File(optional=True), prefix="--forward", doc=InputDocumentation(doc="Forward read aln file")), ToolInput(tag="in_reverse", input_type=File(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Reverse read aln file [optional]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file [default: taxa.tsv]")), ToolInput(tag="in_combine", input_type=String(optional=True), prefix="--combine", doc=InputDocumentation(doc="How to combine forward and reverse hits, for\n'concordant' forward and reverse have to map to the\nsame taxon, for 'best' the best hit from forward and\nreverse is returned [default: best]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads, used to map forward and reverse\nreads in parallel [default: 2]\n"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file [default: taxa.tsv]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxmapper_Map_V0_1_0().translate("wdl", allow_empty_container=True)

