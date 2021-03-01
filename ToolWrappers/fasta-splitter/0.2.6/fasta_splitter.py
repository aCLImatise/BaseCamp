from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Directory, File

Fasta_Splitter_V0_1_0 = CommandToolBuilder(tool="fasta_splitter", base_command=["fasta-splitter"], inputs=[ToolInput(tag="in_n_parts", input_type=String(optional=True), prefix="--n-parts", doc=InputDocumentation(doc="- Divide into <N> parts")), ToolInput(tag="in_part_size", input_type=Int(optional=True), prefix="--part-size", doc=InputDocumentation(doc="- Divide into parts of size <N>")), ToolInput(tag="in_measure", input_type=Boolean(optional=True), prefix="--measure", doc=InputDocumentation(doc="(all|seq|count) - Specify whether all data, sequence length, or\nnumber of sequences is used for determining part\nsizes ('all' by default).")), ToolInput(tag="in_line_length", input_type=Boolean(optional=True), prefix="--line-length", doc=InputDocumentation(doc="- Set output sequence line length, 0 for single line\n(default: 60).")), ToolInput(tag="in_eol", input_type=Boolean(optional=True), prefix="--eol", doc=InputDocumentation(doc="(dos|mac|unix) - Choose end-of-line character ('unix' by default).")), ToolInput(tag="in_part_num_prefix", input_type=Int(optional=True), prefix="--part-num-prefix", doc=InputDocumentation(doc="- Put T before part number in file names (def.: .part-)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="- Specify output directory.")), ToolInput(tag="in_no_pad", input_type=Boolean(optional=True), prefix="--nopad", doc=InputDocumentation(doc="- Don't pad part numbers with 0.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="- Specify output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Splitter_V0_1_0().translate("wdl", allow_empty_container=True)

