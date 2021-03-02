from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Seqhax_Pecheck_V0_1_0 = CommandToolBuilder(tool="seqhax_pecheck", base_command=["seqhax", "pecheck"], inputs=[ToolInput(tag="in_output_interleaved_reads", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output interleaved reads to FILE. Use - for stdout.\nAll sets of paired end files will end up in same\noutput!!! (default: no output)")), ToolInput(tag="in_interleaved_inputs", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Interleaved inputs")), ToolInput(tag="in_print_tabular_summary", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Don't print tabular summary")), ToolInput(tag="in_number_parallel_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of parallel threads (default: no output)")), ToolInput(tag="in_r_one_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_r_two_fq", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_interleaved_reads", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_interleaved_reads", type_hint=File()), doc=OutputDocumentation(doc="Output interleaved reads to FILE. Use - for stdout.\nAll sets of paired end files will end up in same\noutput!!! (default: no output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Pecheck_V0_1_0().translate("wdl", allow_empty_container=True)

