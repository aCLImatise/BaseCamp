from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Gmgc_Mapper_V0_1_0 = CommandToolBuilder(tool="gmgc_mapper", base_command=["gmgc-mapper"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to the input genome FASTA file. (default: None)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory (will be created if non-existent)\n(default: None)")), ToolInput(tag="in_nt_genes", input_type=File(optional=True), prefix="--nt-genes", doc=InputDocumentation(doc="Path to the input DNA gene file (FASTA format)\n(default: None)")), ToolInput(tag="in_aa_genes", input_type=File(optional=True), prefix="--aa-genes", doc=InputDocumentation(doc="Path to the input amino acid gene file (FASTA format)\n(default: None)\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory (will be created if non-existent)\n(default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmgc_Mapper_V0_1_0().translate("wdl", allow_empty_container=True)

