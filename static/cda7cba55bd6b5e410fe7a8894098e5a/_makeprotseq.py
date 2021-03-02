from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float

_Makeprotseq_V0_1_0 = CommandToolBuilder(tool="_makeprotseq", base_command=["_makeprotseq"], inputs=[ToolInput(tag="in_pep_stats_file", input_type=File(optional=True), prefix="-pepstatsfile", doc=InputDocumentation(doc="infile     This file should be a pepstats output file.\nProtein sequences will be created with the\ncomposition in the pepstats output file.")), ToolInput(tag="in_amount", input_type=Boolean(optional=True), prefix="-amount", doc=InputDocumentation(doc="integer    [100] Number of sequences created (Integer 1\nor more)")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="-length", doc=InputDocumentation(doc="integer    [100] Length of each sequence (Integer 1 or\nmore)")), ToolInput(tag="in_use_insert", input_type=Boolean(optional=True), prefix="-useinsert", doc=InputDocumentation(doc="toggle     [N] Do you want to make an insert")), ToolInput(tag="in_six_dot_six_dot_zero_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="Standard (Mandatory) qualifiers (* if not always prompted):"))], outputs=[ToolOutput(tag="out_pep_stats_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_pep_stats_file", type_hint=File()), doc=OutputDocumentation(doc="infile     This file should be a pepstats output file.\nProtein sequences will be created with the\ncomposition in the pepstats output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Makeprotseq_V0_1_0().translate("wdl", allow_empty_container=True)

