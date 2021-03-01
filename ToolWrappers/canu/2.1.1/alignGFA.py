from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Aligngfa_V0_1_0 = CommandToolBuilder(tool="alignGFA", base_command=["alignGFA"], inputs=[ToolInput(tag="in_load_tigs_tgstore", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="v         Load tigs from tgStore 't', version 'v'.")), ToolInput(tag="in_bed_format_source", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc="v         For BED format, the source of the 'chromosomes'.  Similar to -T.\nConsensus sequence must exist for -T and -C (usually in v=2)")), ToolInput(tag="in_input_graph", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Input graph.")), ToolInput(tag="in_output_graphgraph_either", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Output graph.\nGraph are either GFA (v1) or BED format.")), ToolInput(tag="in_gfa", input_type=Boolean(optional=True), prefix="-gfa", doc=InputDocumentation(doc="The input and output graphs are in GFA (v1) format.")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="The input graph is in BED format.  If -C is supplied, the\noutput will also be BED, and will have updated positions.\nIf -C is not supplied, the output will be GFA (v1) of the\noverlaps inferred from the BED positions.")), ToolInput(tag="in_increase_chatter", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Increase chatter.")), ToolInput(tag="in_use_computational_threads", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Use 'threads' computational threads.")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aligngfa_V0_1_0().translate("wdl")

