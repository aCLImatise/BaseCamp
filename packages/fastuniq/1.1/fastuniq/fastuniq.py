from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fastuniq_V0_1_0 = CommandToolBuilder(tool="fastuniq", base_command=["fastuniq"], inputs=[ToolInput(tag="in_input_file_list", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": The input file list of paired FSATQ sequence files [FILE IN]\nMaximum 1000 pairs")), ToolInput(tag="in_output_sequence_format", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc=": Output sequence format [q/f/p]\nq : FASTQ format into TWO output files\nf : FASTA format into TWO output files\np : FASTA format into ONE output file\ndefault = q")), ToolInput(tag="in_first_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": The first output file [FILE OUT]")), ToolInput(tag="in_second_output_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc=": The second output file [FILE OUT]\nOptional. ONLY required when output sequence format(-t) is specify as\n[q] or [f].")), ToolInput(tag="in_types_sequence_descriptions", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": Types of sequence descriptions for output [0/1]\n0 : The raw descriptions\n1 : New serial numbers assigned by FastUniq\ndefault = 0"))], outputs=[ToolOutput(tag="out_output_sequence_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sequence_format", type_hint=File()), doc=OutputDocumentation(doc=": Output sequence format [q/f/p]\nq : FASTQ format into TWO output files\nf : FASTA format into TWO output files\np : FASTA format into ONE output file\ndefault = q")), ToolOutput(tag="out_first_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_first_output_file", type_hint=File()), doc=OutputDocumentation(doc=": The first output file [FILE OUT]")), ToolOutput(tag="out_second_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_second_output_file", type_hint=File()), doc=OutputDocumentation(doc=": The second output file [FILE OUT]\nOptional. ONLY required when output sequence format(-t) is specify as\n[q] or [f]."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastuniq_V0_1_0().translate("wdl", allow_empty_container=True)

