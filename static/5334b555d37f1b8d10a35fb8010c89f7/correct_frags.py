from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Correct_Frags_V0_1_0 = CommandToolBuilder(tool="correct_frags", base_command=["correct-frags"], inputs=[ToolInput(tag="in_set_keep_flag", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="set keep flag on end of frags with less than this many olaps")), ToolInput(tag="in_specify_file_use", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="specify file of sorted overlaps to use (in the format produced\nby  get-olaps")), ToolInput(tag="in_minimum_exactmatch_region", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="minimum exact-match region to prevent change")), ToolInput(tag="in_specify_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="specify output file to hold correction info")), ToolInput(tag="in_use_haplotype_counts", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="don't use haplotype counts to correct")), ToolInput(tag="in_specify_binary_store", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="specify the binary overlap store containing overlaps to use")), ToolInput(tag="in_set_number_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="set number of p-threads to use")), ToolInput(tag="in_specify_level_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="specify level of verbose outputs, higher is more")), ToolInput(tag="in_specify_number_vote", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="specify number of exact match bases around an error to vote to change")), ToolInput(tag="in_length_end_exclude", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="length of end of exact match to exclude in preventing change")), ToolInput(tag="in_ehp", input_type=Boolean(optional=True), prefix="-ehp", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_specify_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_output_file", type_hint=File()), doc=OutputDocumentation(doc="specify output file to hold correction info"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correct_Frags_V0_1_0().translate("wdl", allow_empty_container=True)

