from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Sequence_Sample_V0_1_0 = CommandToolBuilder(tool="sequence_sample", base_command=["sequence", "sample"], inputs=[ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="-paired", doc=InputDocumentation(doc="treat inputs as paired sequences; the first two files form the\nfirst pair, and so on.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="write output sequences to file O.  If paired, two files must be supplied.")), ToolInput(tag="in_coverage", input_type=Int(optional=True), prefix="-coverage", doc=InputDocumentation(doc="output C coverage of sequences, based on genome size G.")), ToolInput(tag="in_genome_size", input_type=String(optional=True), prefix="-genomesize", doc=InputDocumentation(doc="output B bases.")), ToolInput(tag="in_reads", input_type=String(optional=True), prefix="-reads", doc=InputDocumentation(doc="output R reads.")), ToolInput(tag="in_pairs", input_type=String(optional=True), prefix="-pairs", doc=InputDocumentation(doc="output P pairs (only if -paired).")), ToolInput(tag="in_fraction", input_type=String(optional=True), prefix="-fraction", doc=InputDocumentation(doc="output fraction F of the input bases.")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mode", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="write output sequences to file O.  If paired, two files must be supplied."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

