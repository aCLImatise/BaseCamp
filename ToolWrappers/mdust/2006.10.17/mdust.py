from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Mdust_V0_1_0 = CommandToolBuilder(tool="mdust", base_command=["mdust"], inputs=[ToolInput(tag="in_cutoff_value_lower", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="<cut-off> value is 28 (lower values might mask more,\nbut possibly still useful sequence; > 64 will rarely mask poly-triplets)")), ToolInput(tag="in_maximum_word_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="maximum word size to <wsize> (default 3)")), ToolInput(tag="in_fasta_output_disabled", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="fasta output is not disabled by -c, set the masking letter type:\nN ('N', default), X ('X'), L (make lowercase)")), ToolInput(tag="in_masking_coordinates_seqlength", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="masking coordinates only:\nseq_name, seqlength, mask_start, mask_end  (tab delimited)\n")), ToolInput(tag="in_fast_a_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdust_V0_1_0().translate("wdl", allow_empty_container=True)

