from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String

Phyluce_Assembly_Explode_Get_Fastas_File_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_explode_get_fastas_file", base_command=["phyluce_assembly_explode_get_fastas_file"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The input fasta file to explode")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to create and in which to store\nthe fastas")), ToolInput(tag="in_by_tax_on", input_type=Boolean(optional=True), prefix="--by-taxon", doc=InputDocumentation(doc="Split file by taxon and not by locus")), ToolInput(tag="in_split_char", input_type=String(optional=True), prefix="--split-char", doc=InputDocumentation(doc="The character to split on\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory to create and in which to store\nthe fastas"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Explode_Get_Fastas_File_V0_1_0().translate("wdl", allow_empty_container=True)

