from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Xml_To_Bas_Pl_V0_1_0 = CommandToolBuilder(tool="xml_to_bas.pl", base_command=["xml_to_bas.pl"], inputs=[ToolInput(tag="in_uri", input_type=Boolean(optional=True), prefix="-uri", doc=InputDocumentation(doc="Same URI used by gtdownload")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Name for output file. Defaults to STDOUT.")), ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="-bam", doc=InputDocumentation(doc="BAM|CRAM file this data relates to\n- checks retrieved data correlates with expected BAM\n- additionally can correct read_group_id if other fields correlate when\nclashes occur.")), ToolInput(tag="in_local_path", input_type=File(optional=True), prefix="-local-path", doc=InputDocumentation(doc="file path for XML from GNOS.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="-man", doc=InputDocumentation(doc="Full documentation.")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Prints the version number."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name for output file. Defaults to STDOUT."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xml_To_Bas_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

