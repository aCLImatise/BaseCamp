from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Spades_Convert_Bin_To_Fasta_V0_1_0 = CommandToolBuilder(tool="spades_convert_bin_to_fasta", base_command=["spades-convert-bin-to-fasta"], inputs=[ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix of .off and .seq file for contigs in binary format")), ToolInput(tag="in_info_file", input_type=File(optional=True), prefix="--info_file", doc=InputDocumentation(doc="Path to info file for contigs in binary format")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output file name"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Convert_Bin_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

