from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Convert_Reference_V0_1_0 = CommandToolBuilder(tool="convert_reference", base_command=["convert_reference"], inputs=[ToolInput(tag="in_name_target_contig", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of target contig")), ToolInput(tag="in_print_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print more information")), ToolInput(tag="in_msa_input_contigs", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="MSA input of all contigs aligned")), ToolInput(tag="in_input_sambam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input SAM/BAM file")), ToolInput(tag="in_output_sambam_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output SAM/BAM file")), ToolInput(tag="in_insert_silent_padding", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Insert silent padding states 'P' in CIGAR")), ToolInput(tag="in_use_x_states", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="Use X/= instead of M for Match/Mismatch states")), ToolInput(tag="in_hardclip_bases_instead", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Hard-clip bases instead of the default soft-clipping"))], outputs=[ToolOutput(tag="out_output_sambam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sambam_file", type_hint=File()), doc=OutputDocumentation(doc="Output SAM/BAM file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Reference_V0_1_0().translate("wdl", allow_empty_container=True)

