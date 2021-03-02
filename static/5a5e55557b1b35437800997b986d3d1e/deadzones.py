from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Deadzones_V0_1_0 = CommandToolBuilder(tool="deadzones", base_command=["deadzones"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Name of output file (default: stdout)")), ToolInput(tag="in_km_er", input_type=Boolean(optional=True), prefix="-kmer", doc=InputDocumentation(doc="Width of k-mers")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="-prefix", doc=InputDocumentation(doc="prefix length")), ToolInput(tag="in_bisulfite", input_type=Boolean(optional=True), prefix="-bisulfite", doc=InputDocumentation(doc="get bisulfite deadzones")), ToolInput(tag="in_ag_wild", input_type=Boolean(optional=True), prefix="-ag-wild", doc=InputDocumentation(doc="A/G wildcard for bisulfite")), ToolInput(tag="in_suffix", input_type=Boolean(optional=True), prefix="-suffix", doc=InputDocumentation(doc="suffix of FASTA files (assumes -c indicates dir)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more run information")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_one_or_more_fast_a_chrom_files", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file (default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deadzones_V0_1_0().translate("wdl", allow_empty_container=True)

