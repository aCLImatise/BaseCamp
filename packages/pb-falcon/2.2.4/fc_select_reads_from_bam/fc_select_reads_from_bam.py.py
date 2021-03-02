from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int

Fc_Select_Reads_From_Bam_Py_V0_1_0 = CommandToolBuilder(tool="fc_select_reads_from_bam.py", base_command=["fc_select_reads_from_bam.py"], inputs=[ToolInput(tag="in_raw_read_to_contigs", input_type=File(optional=True), prefix="--rawread-to-contigs", doc=InputDocumentation(doc="rawread_to_contigs file (from where?) (default:\n./2-asm-\nfalcon/read_maps/dump_rawread_ids/rawread_to_contigs)")), ToolInput(tag="in_raw_read_ids", input_type=File(optional=True), prefix="--rawread-ids", doc=InputDocumentation(doc="rawread_ids file (from where?) (default: ./2-asm-\nfalcon/read_maps/dump_rawread_ids/rawread_ids)")), ToolInput(tag="in_sam_dir", input_type=Directory(optional=True), prefix="--sam-dir", doc=InputDocumentation(doc="Output directory for ctg.sam files (default:\n./4-polish/reads)")), ToolInput(tag="in_max_n_open_files", input_type=Int(optional=True), prefix="--max-n-open-files", doc=InputDocumentation(doc="We write sam files several at-a-time, limited by this.\n(default: 50)\n"))], outputs=[ToolOutput(tag="out_sam_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_sam_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for ctg.sam files (default:\n./4-polish/reads)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Select_Reads_From_Bam_Py_V0_1_0().translate("wdl", allow_empty_container=True)

