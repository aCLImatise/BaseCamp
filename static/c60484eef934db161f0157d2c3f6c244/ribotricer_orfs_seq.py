from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ribotricer_Orfs_Seq_V0_1_0 = CommandToolBuilder(tool="ribotricer_orfs_seq", base_command=["ribotricer", "orfs-seq"], inputs=[ToolInput(tag="in_ribot_ricer_index", input_type=File(optional=True), prefix="--ribotricer_index", doc=InputDocumentation(doc="Path to the index file of ribotricer This file\nshould be generated using ribotricer prepare-orfs\n[required]")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to FASTA file  [required]")), ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="--protein", doc=InputDocumentation(doc="Output protein sequence instead of nucleotide")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Path to output file  [required]"))], outputs=[ToolOutput(tag="out_save_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_to", type_hint=File()), doc=OutputDocumentation(doc="Path to output file  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribotricer_Orfs_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

