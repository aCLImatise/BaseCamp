from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Int

Fc_Fetch_Reads_V0_1_0 = CommandToolBuilder(tool="fc_fetch_reads", base_command=["fc_fetch_reads"], inputs=[ToolInput(tag="in_base_dir", input_type=String(optional=True), prefix="--base_dir", doc=InputDocumentation(doc="the base working dir of a falcon assembly")), ToolInput(tag="in_fof_n", input_type=File(optional=True), prefix="--fofn", doc=InputDocumentation(doc="path to the file of the list of raw read fasta files")), ToolInput(tag="in_ctg_id", input_type=File(optional=True), prefix="--ctg_id", doc=InputDocumentation(doc="contig identifier in the contig fasta file")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="the output base_dir, default to\n`base_dir/3-unzip/reads` directory")), ToolInput(tag="in_min_ctg_lenth", input_type=Int(optional=True), prefix="--min_ctg_lenth", doc=InputDocumentation(doc="the minimum length of the contig for the outputs,\ndefault=20000\n"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="the output base_dir, default to\n`base_dir/3-unzip/reads` directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Fetch_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

