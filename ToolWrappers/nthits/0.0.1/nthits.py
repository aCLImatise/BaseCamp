from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Nthits_V0_1_0 = CommandToolBuilder(tool="nthits", base_command=["nthits"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use N parallel threads [16]")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="the length of kmer [64]")), ToolInput(tag="in_cut_off", input_type=String(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="the maximum coverage of kmer in output")), ToolInput(tag="in_pref", input_type=File(optional=True), prefix="--pref", doc=InputDocumentation(doc="the prefix for output file name [repeat]")), ToolInput(tag="in_out_bloom", input_type=Boolean(optional=True), prefix="--outbloom", doc=InputDocumentation(doc="output the most frequent k-mers in a Bloom filter")), ToolInput(tag="in_solid", input_type=Boolean(optional=True), prefix="--solid", doc=InputDocumentation(doc="output the solid k-mers (non-errornous k-mers)"))], outputs=[ToolOutput(tag="out_pref", output_type=File(optional=True), selector=InputSelector(input_to_select="in_pref", type_hint=File()), doc=OutputDocumentation(doc="the prefix for output file name [repeat]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nthits_V0_1_0().translate("wdl", allow_empty_container=True)

