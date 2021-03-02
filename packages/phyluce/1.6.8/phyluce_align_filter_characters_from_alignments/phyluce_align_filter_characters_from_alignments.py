from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Phyluce_Align_Filter_Characters_From_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_align_filter_characters_from_alignments", base_command=["phyluce_align_filter_characters_from_alignments"], inputs=[ToolInput(tag="in_alignments", input_type=String(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The input alignment files to filter")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output FASTA file to create")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format\n")), ToolInput(tag="in_var_3", input_type=String(), position=0, doc=InputDocumentation(doc="[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="The output FASTA file to create"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Filter_Characters_From_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

