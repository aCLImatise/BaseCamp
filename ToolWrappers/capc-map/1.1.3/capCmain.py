from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Capcmain_V0_1_0 = CommandToolBuilder(tool="capCmain", base_command=["capCmain"], inputs=[ToolInput(tag="in_fragfile_bed_file", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="frag_file   is a bed file of restriction enzyme fragments genome wide")), ToolInput(tag="in_targfile_bed_file", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="targ_file   is a bed file of capture targets")), ToolInput(tag="in_samfile_sam_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="sam_file    is a SAM file containing groups of aligned\ndigested fragments, sorted by name")), ToolInput(tag="in_name_first_part", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="name        is the first part of the output file name")), ToolInput(tag="in_exclusion_zone_reporter", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="exclusion zone; reporter fragments mapping within N bp of\na target fragment are discarder. Default N=500.")), ToolInput(tag="in_save_interchromosomal_saved", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="save interchromosomal. If present, interchomosomal\ninteractions will be saved as well as counted.\n"))], outputs=[ToolOutput(tag="out_name_first_part", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_first_part", type_hint=File()), doc=OutputDocumentation(doc="name        is the first part of the output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capcmain_V0_1_0().translate("wdl", allow_empty_container=True)

