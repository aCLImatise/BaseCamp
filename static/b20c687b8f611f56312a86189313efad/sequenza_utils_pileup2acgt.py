from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Sequenza_Utils_Pileup2Acgt_V0_1_0 = CommandToolBuilder(tool="sequenza_utils_pileup2acgt", base_command=["sequenza-utils", "pileup2acgt"], inputs=[ToolInput(tag="in_m_pile_up", input_type=File(optional=True), prefix="--mpileup", doc=InputDocumentation(doc="Name of the input mpileup (SAMtools) file. If the\nfilename ends in .gz it will be opened in gzip mode.\nIf the file name is - it will be read from STDIN.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of the output file. To use gzip compression name\nthe file ending in .gz. Default STDOUT.")), ToolInput(tag="in_minimum_required_read", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="The minimum required read depth on a position to test\nfor mutation.")), ToolInput(tag="in_q_limit", input_type=String(optional=True), prefix="--qlimit", doc=InputDocumentation(doc="Minimum nucleotide quality score filter.")), ToolInput(tag="in_no_end", input_type=Boolean(optional=True), prefix="--no-end", doc=InputDocumentation(doc="Discard the base located at the end of the read")), ToolInput(tag="in_no_start", input_type=Boolean(optional=True), prefix="--no-start", doc=InputDocumentation(doc="Discard the base located at the start of the read")), ToolInput(tag="in_q_format", input_type=Int(optional=True), prefix="--qformat", doc=InputDocumentation(doc="Quality format, options are 'sanger' or 'illumina'.\nThis will add an offset of 33 or 64 respectively to\nthe qlimit value.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file. To use gzip compression name\nthe file ending in .gz. Default STDOUT."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequenza_Utils_Pileup2Acgt_V0_1_0().translate("wdl", allow_empty_container=True)

