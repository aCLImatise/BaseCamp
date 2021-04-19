from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Metagraph_Extend_V0_1_0 = CommandToolBuilder(tool="metagraph_extend", base_command=["metagraph", "extend"], inputs=[ToolInput(tag="in_min_count", input_type=Boolean(optional=True), prefix="--min-count", doc=InputDocumentation(doc="[INT]    min k-mer abundance, including [1]")), ToolInput(tag="in_max_count", input_type=Boolean(optional=True), prefix="--max-count", doc=InputDocumentation(doc="[INT]    max k-mer abundance, excluding [inf]")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="[STR]    basename of reference sequence (for parsing VCF files) []")), ToolInput(tag="in_fwd_and_reverse", input_type=Boolean(optional=True), prefix="--fwd-and-reverse", doc=InputDocumentation(doc="add both forward and reverse complement sequences [off]")), ToolInput(tag="in_annotator", input_type=Boolean(optional=True), prefix="--annotator", doc=InputDocumentation(doc="[STR]    annotator to extend []")), ToolInput(tag="in_outfile_base", input_type=File(optional=True), prefix="--outfile-base", doc=InputDocumentation(doc="[STR] basename of output file []")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile_base", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile_base", type_hint=File()), doc=OutputDocumentation(doc="[STR] basename of output file []"))], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Extend_V0_1_0().translate("wdl")

