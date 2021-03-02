from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dicey_Blacklist_V0_1_0 = CommandToolBuilder(tool="dicey_blacklist", base_command=["dicey", "blacklist"], inputs=[ToolInput(tag="in_arg_blacklist_bed", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --blacklist ] arg (='blacklist.bed')\nblacklist in BED format")), ToolInput(tag="in_arg_gzipped_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (='map.fa.gz')   gzipped output file")), ToolInput(tag="in_danio_rerio_dot_fado_tgz", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_gzipped_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_gzipped_output", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (='map.fa.gz')   gzipped output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dicey_Blacklist_V0_1_0().translate("wdl", allow_empty_container=True)

