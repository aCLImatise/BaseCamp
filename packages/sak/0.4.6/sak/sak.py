from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Sak_V0_1_0 = CommandToolBuilder(tool="sak", base_command=["sak"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_out_path", input_type=File(optional=True), prefix="--out-path", doc=InputDocumentation(doc="Path to the resulting file. If omitted, result is printed to stdout\nin FastQ format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna,\n.ffn, .fastq, .fasta, .faa, .fa, and .bam.")), ToolInput(tag="in_rev_comp", input_type=Boolean(optional=True), prefix="--revcomp", doc=InputDocumentation(doc="Reverse-complement output.")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="Maximal number of sequence characters to write out.")), ToolInput(tag="in_sequence", input_type=Int(optional=True), prefix="--sequence", doc=InputDocumentation(doc="of INTEGER's\nSelect the given sequence for extraction by 0-based index.")), ToolInput(tag="in_sequence_name", input_type=String(optional=True), prefix="--sequence-name", doc=InputDocumentation(doc="of STRING's\nSelect sequence with name prefix being NAME.")), ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="of STRING's\nSelect sequences from-to where from and to are 0-based indices.")), ToolInput(tag="in_in_fix", input_type=String(optional=True), prefix="--infix", doc=InputDocumentation(doc="of STRING's\nSelect characters from-to where from and to are 0-based indices.")), ToolInput(tag="in_line_length", input_type=Int(optional=True), prefix="--line-length", doc=InputDocumentation(doc="Set line length in output file. See section Line Length for details.\nIn range [-1..inf]."))], outputs=[ToolOutput(tag="out_out_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the resulting file. If omitted, result is printed to stdout\nin FastQ format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna,\n.ffn, .fastq, .fasta, .faa, .fa, and .bam."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sak_V0_1_0().translate("wdl", allow_empty_container=True)

