from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Simreadsbs_V0_1_0 = CommandToolBuilder(tool="simreadsbs", base_command=["simreadsbs"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Name of output file (default: stdout)")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="-reads", doc=InputDocumentation(doc="number of reads to simulate")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="-width", doc=InputDocumentation(doc="width of reads to simulate")), ToolInput(tag="in_err", input_type=Boolean(optional=True), prefix="-err", doc=InputDocumentation(doc="maximum number of simulated sequencing errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more run info")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="-fastq", doc=InputDocumentation(doc="write FASTQ format reads")), ToolInput(tag="in_prob", input_type=File(optional=True), prefix="-prob", doc=InputDocumentation(doc="prb output file")), ToolInput(tag="in_meth", input_type=Boolean(optional=True), prefix="-meth", doc=InputDocumentation(doc="rate of CpG methylation")), ToolInput(tag="in_bs", input_type=Boolean(optional=True), prefix="-bs", doc=InputDocumentation(doc="rate of bisulfite conversion")), ToolInput(tag="in_ag", input_type=Boolean(optional=True), prefix="-ag", doc=InputDocumentation(doc="generate A/G wildcard reads")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="-seed", doc=InputDocumentation(doc="random number seed")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_fast_a_chrom_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file (default: stdout)")), ToolOutput(tag="out_prob", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prob", type_hint=File()), doc=OutputDocumentation(doc="prb output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simreadsbs_V0_1_0().translate("wdl", allow_empty_container=True)

